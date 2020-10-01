class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.integer :public_id, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string  :name, null: false
      t.timestamps
    end
  end
end
