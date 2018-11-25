class CreatePromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :promotions do |t|
      t.string :code
      t.datetime :exp_date

      t.timestamps
    end
  end
end
