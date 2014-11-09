class CreateBaristaQs < ActiveRecord::Migration
  def change
    create_table :barista_qs do |t|

      t.timestamps
    end
  end
end
