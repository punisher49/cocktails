class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.text :name
      t.text :image
      t.text :creator
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end
