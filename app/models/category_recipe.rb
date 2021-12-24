# frozen_string_literal: true

class CategoryRecipe < ApplicationRecord
  self.table_name = "Z_12CATEGORIES"

  belongs_to :category, foreign_key: "Z_13CATEGORIES"
  belongs_to :recipe, foreign_key: "Z_12RECIPES"

  alias_attribute :category_id, :Z_13CATEGORIES
end
