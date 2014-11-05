class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :item_total
      t.decimal :tax
      t.decimal :total
      t.integer :payment_id

      t.timestamps
    end
  end
end
