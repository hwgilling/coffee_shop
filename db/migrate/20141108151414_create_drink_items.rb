class CreateDrinkItems < ActiveRecord::Migration
  def change
    create_table :drink_items do |t|
      t.integer :order_id
      t.string :name
      t.string :size
      t.integer :extra_shot
      t.string :milk
      t.string :addins
      t.boolean :iced
      t.decimal :cost

      t.timestamps
    end
  end
end
