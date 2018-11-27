class AddStreetToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :street, :string
  end
end
