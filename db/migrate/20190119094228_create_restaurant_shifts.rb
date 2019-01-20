class CreateRestaurantShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_shifts do |t|
      t.references :restaurant, foreign_key: true
      t.integer :shift, default: 0
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
