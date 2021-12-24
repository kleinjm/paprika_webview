# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  if ENV.fetch("MIGRATING", false) == "true"
    connects_to database: { writing: :primary, reading: :primary_replica }
  end
end
