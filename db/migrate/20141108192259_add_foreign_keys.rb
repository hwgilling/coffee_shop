class AddForeignKeys < ActiveRecord::Migration
  def change
  	add_column :orders, :customer_id, :integer
  	add_column :orders, :payment_id, :integer

  	add_column :drink_items, :order_id, :integer

  	add_column :food_items, :order_id, :integer

  	add_column :barista_qs, :order_id, :integer

  	add_column :food_qs, :order_id, :integer
  end
end
