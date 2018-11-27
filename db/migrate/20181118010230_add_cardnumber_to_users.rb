class AddCardnumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cardnumber, :string
  end
end
