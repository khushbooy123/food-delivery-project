class CreateFoodsCategoriesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :foods do |t|
      t.index :category_id
      t.index :food_id
    end
  end
end
