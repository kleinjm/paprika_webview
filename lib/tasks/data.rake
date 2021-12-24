# frozen_string_literal: true

namespace :data do
  desc "Sync local paprika files on a Mac to the app's database. Must run with MIGRATING=true"
  task sync_paprika: :environment do
    paprika_data_dir = "$HOME/Library/Group\\\ Containers/72KVKW69K8.com.hindsightlabs.paprika.mac.v3/Data"

    paprika_database = "#{paprika_data_dir}/Database/Paprika.sqlite"
    app_database = Rails.root.join("db/development.sqlite3")
    puts "Copying sqlite database to db directory"
    system("cp #{paprika_database} #{app_database}")

    paprika_photos = "#{paprika_data_dir}/Photos"
    app_photos = Rails.root.join("app/assets/images")
    puts "Copying photos to assets directory"
    system("cp -r #{paprika_photos}/* #{app_photos}")

    exit unless ENV.fetch("MIGRATING", false) == "true"

    puts "Migrating data"

    Dir[Rails.root.join("app/models/*.rb")].each { |file| require_dependency(file) }
    ApplicationRecord.descendants.each do |model|
      records = []
      ActiveRecord::Base.connected_to(role: :reading) do
        records = model.all
      end

      ActiveRecord::Base.connected_to(role: :writing) do
        records.each do |record|
          model.find_or_create_by(record.attributes)
        end
      end
      puts "#{model.name}: #{model.count} records"
    end
  end
end
