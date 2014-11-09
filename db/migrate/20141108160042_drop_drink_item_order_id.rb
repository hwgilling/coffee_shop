class DropDrinkItemOrderId < ActiveRecord::Migration
  def change
  	    change_table :drink_items do |t|
  	    	t.remove(:order_id)
    end
  end
end
