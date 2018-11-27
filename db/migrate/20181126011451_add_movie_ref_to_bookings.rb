class AddMovieRefToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :movie, foreign_key: true
  end
end
