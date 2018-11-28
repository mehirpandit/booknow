class AddColumnsToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :producer, :string
    add_column :movies, :synopsis, :string
    add_column :movies, :review, :string
    add_column :movies, :rating, :string
  end
end
