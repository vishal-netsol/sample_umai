class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :restaurant, foreign_key: true
      t.references :restaurant_table, foreign_key: true
      t.references :guest, foreign_key: true
      t.integer :guest_count
      t.bigint :time
      t.integer :status, default: 0
      t.references :restaurant_shift, foreign_key: true
      t.timestamps
    end
  end
end
