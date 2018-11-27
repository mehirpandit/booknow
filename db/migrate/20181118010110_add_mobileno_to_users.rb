class AddMobilenoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mobileno, :string
  end
end
