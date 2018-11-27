class AddHallRefToShowTimes < ActiveRecord::Migration[5.2]
  def change
    add_reference :show_times, :hall, foreign_key: true
  end
end
