class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :uid
      t.string :password
      t.string :email
      t.integer :mobile
      t.string :payment_type
      t.string :payment_id

      t.timestamps
    end
  end
end
