class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
   rename_column :payments, :type, :card_type
  end
end
