class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :type
      t.integer :card_no
      t.date :exp_date
      t.integer :cv_no

      t.timestamps
    end
  end
end
