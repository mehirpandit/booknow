class AddCardexpiryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cardexpiry, :string
  end
end
