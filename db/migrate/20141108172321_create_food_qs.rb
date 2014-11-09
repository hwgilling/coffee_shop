class CreateFoodQs < ActiveRecord::Migration
  def change
    create_table :food_qs do |t|

      t.timestamps
    end
  end
end
