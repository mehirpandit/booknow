class AddShowDateToShowTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :show_times, :show_date, :date
  end
end
