class AddGeocodingFieldsToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :address, :text
    add_column :cocktails, :latitude, :float
    add_column :cocktails, :longitude, :float
  end
end
