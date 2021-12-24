# frozen_string_literal: true

namespace :data do
  desc "Sync local paprika files on a Mac to the app's database"
  task sync_paprika: :environment do
    paprika_data_dir = "$HOME/Library/Group\\\ Containers/72KVKW69K8.com.hindsightlabs.paprika.mac.v3/Data"

    paprika_database = "#{paprika_data_dir}/Database/Paprika.sqlite"
    app_database = Rails.root.join("db/development.sqlite3")
    system("cp #{paprika_database} #{app_database}")

    paprika_photos = "#{paprika_data_dir}/Photos"
    app_photos = Rails.root.join("app/assets/images")
    system("cp -r #{paprika_photos}/* #{app_photos}")
  end

  desc "Copy development data to production"
  task sync_dev_to_prod: :environment do
    dev_db = Rails.root.join("db/development.sqlite3")
    prod_db = Rails.root.join("db/production.sqlite3")

    system("cp #{dev_db} #{prod_db}")
  end
end
