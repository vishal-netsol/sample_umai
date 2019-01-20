class CreateRestaurantTables < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_tables do |t|
      t.string :name
      t.integer :min_seats
      t.integer :max_seats
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
