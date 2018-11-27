class AddMovieRefToShowTimes < ActiveRecord::Migration[5.2]
  def change
    add_reference :show_times, :movie, foreign_key: true
  end
end
