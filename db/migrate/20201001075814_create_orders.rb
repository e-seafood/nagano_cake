class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :public_id, null: false
      t.integer :status, default: 0, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.integer :payment, default: 0, null: false
      t.integer :postage, null: false
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
