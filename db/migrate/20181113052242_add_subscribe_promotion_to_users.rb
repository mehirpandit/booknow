class AddSubscribePromotionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :subscribe_promotion, :string
  end
end
