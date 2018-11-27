class CreateSeatings < ActiveRecord::Migration[5.2]
  def change
    create_table :seatings do |t|
      t.integer :seat_row
      t.integer :seat_no

      t.timestamps
    end
  end
end
