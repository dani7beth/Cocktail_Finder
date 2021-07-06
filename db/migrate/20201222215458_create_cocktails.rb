class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :served
      t.string :garnish
      t.string :drinkware
      t.string :ingredients
      t.text :instructions
      t.string :image
      t.string :timing
      t.timestamps
    end
  end
end
