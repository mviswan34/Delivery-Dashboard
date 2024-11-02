class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :dish_name
      t.string :delivery_address
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
