class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :public_id, null: false
      t.integer :item_id, null: false
      t.integer :item_count, null: false
      t.timestamps
    end
  end
end
