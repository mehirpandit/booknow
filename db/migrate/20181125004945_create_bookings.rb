class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :tickets
      t.float :price
       
      t.timestamps
    end
  end
end
