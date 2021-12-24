# frozen_string_literal: true

class Recipe < ApplicationRecord
  self.table_name = "ZRECIPE"

  has_many :category_recipes, foreign_key: "Z_12RECIPES"
  has_many :categories, through: :category_recipes

  alias_attribute :cooktime, :ZCOOKTIME
  alias_attribute :created, :ZCREATED
  alias_attribute :deleted, :ZINTRASH
  alias_attribute :description, :ZDESCRIPTIONTEXT
  alias_attribute :difficulty, :ZDIFFICULTY
  alias_attribute :directions, :ZDIRECTIONS
  alias_attribute :imageurl, :ZIMAGEURL
  alias_attribute :ingredients, :ZINGREDIENTS
  alias_attribute :name, :ZNAME
  alias_attribute :notes, :ZNOTES
  alias_attribute :nutritionalinfo, :ZNUTRITIONALINFO
  alias_attribute :photo, :ZPHOTO
  alias_attribute :photolarge, :ZPHOTOLARGE
  alias_attribute :preptime, :ZPREPTIME
  alias_attribute :rating, :ZRATING
  alias_attribute :scale, :ZSCALE
  alias_attribute :selecteddirection, :ZSELECTEDDIRECTION
  alias_attribute :selectedingredients, :ZSELECTEDINGREDIENTS
  alias_attribute :servings, :ZSERVINGS
  alias_attribute :source, :ZSOURCE
  alias_attribute :sourceurl, :ZSOURCEURL
  alias_attribute :status, :ZSTATUS
  alias_attribute :totaltime, :ZTOTALTIME
  alias_attribute :uid, :ZUID

  default_scope { where(deleted: false) }

  MAX_STARS = 5

  def feature_photo
    return nil if photo.blank?

    "#{uid}/#{photo}"
  end

  def unfilled_stars
    MAX_STARS - rating
  end
end
