class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :photo
      t.string :price
      t.string :rating

      t.timestamps
    end
  end
end
