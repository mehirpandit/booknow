class CreateShowTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :show_times do |t|
      t.integer :show_no
      t.datetime :show_time

      t.timestamps
    end
  end
end
