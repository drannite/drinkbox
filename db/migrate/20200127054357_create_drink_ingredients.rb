class CreateDrinkIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_ingredients do |t|
      t.references :drink, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
