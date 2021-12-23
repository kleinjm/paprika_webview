# frozen_string_literal: true

namespace :data do
  desc "Sync local paprika files on a Mac to the app's database"
  task sync_paprika: :environment do
    paprika_data_dir = "$HOME/Library/Group\\\ Containers/72KVKW69K8.com.hindsightlabs.paprika.mac.v3/Data"
    paprika_database = "#{paprika_data_dir}/Database/Paprika.sqlite"
    paprika_photos = "#{paprika_data_dir}/Photos"
    app_database = Rails.root.join("db/development.sqlite3")

    system("cp #{paprika_database} #{app_database}")
  end
end
