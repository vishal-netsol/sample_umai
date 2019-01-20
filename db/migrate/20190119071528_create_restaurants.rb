class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.bigint :phone_number
      t.string :email

      t.timestamps
    end
  end
end
