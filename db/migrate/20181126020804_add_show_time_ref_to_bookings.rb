class AddShowTimeRefToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :show_time, foreign_key: true
  end
end
