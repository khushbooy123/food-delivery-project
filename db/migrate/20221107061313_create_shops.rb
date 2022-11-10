class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :ShopName
      t.string :OpeningTime
      t.string :ClosingTime
      t.string :Status

      t.timestamps
    end
  end
end
