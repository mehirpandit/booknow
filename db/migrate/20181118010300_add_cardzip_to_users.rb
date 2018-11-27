class AddCardzipToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cardzip, :string
  end
end
