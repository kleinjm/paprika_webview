# frozen_string_literal: true

class Category < ApplicationRecord
  self.table_name = "ZRECIPECATEGORY"

  has_many :category_recipes, foreign_key: "Z_13CATEGORIES"
  has_many :recipes, through: :category_recipes

  alias_attribute :id, :Z_PK
  alias_attribute :name, :ZNAME
end
