class CreateCategoriesRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_recipes do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :recipe, foreign_key: true
      t.timestamps
    end
  end
end
