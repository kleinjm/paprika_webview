# frozen_string_literal: true

class AddIndexes < ActiveRecord::Migration[7.0]
  def change
    add_index :ZBOOKMARK, :ZUID
    add_index :ZGROCERYAISLE, :ZUID
    add_index :ZGROCERYINGREDIENT, :ZAISLE
    add_index :ZGROCERYINGREDIENT, :ZUID
    add_index :ZGROCERYITEM, :ZAISLE
    add_index :ZGROCERYITEM, :ZLIST
    add_index :ZGROCERYITEM, :ZUID
    add_index :ZGROCERYLIST, :ZUID
    add_index :ZMEAL, :ZRECIPE
    add_index :ZMEAL, :ZTYPE
    add_index :ZMEAL, :ZDATE
    add_index :ZMEAL, :ZUID
    add_index :ZMEALTYPE, :ZUID
    add_index :ZMENU, :ZUID
    add_index :ZMENUITEM, :ZMENU
    add_index :ZMENUITEM, :ZRECIPE
    add_index :ZMENUITEM, :ZTYPE
    add_index :ZMENUITEM, :ZUID
    add_index :ZPANTRYITEM, :ZAISLE
    add_index :ZPANTRYITEM, :ZUID
    add_index :Z_12CATEGORIES, :Z_13CATEGORIES
    add_index :Z_12CATEGORIES, :Z_12RECIPES
    add_index :ZRECIPE, :ZCREATED
    add_index :ZRECIPE, :ZNAME
    add_index :ZRECIPE, :ZRATING
    add_index :ZRECIPE, :ZUID
    add_index :ZRECIPECATEGORY, :ZPARENT
    add_index :ZRECIPECATEGORY, :ZUID
    add_index :ZRECIPEPHOTO, :ZRECIPE
    add_index :ZRECIPEPHOTO, :ZUID
  end
end
