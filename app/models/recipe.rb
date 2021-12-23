# frozen_string_literal: true

class Recipe < ApplicationRecord
  self.table_name = "ZRECIPE"

  alias_attribute :name, :ZNAME
end
