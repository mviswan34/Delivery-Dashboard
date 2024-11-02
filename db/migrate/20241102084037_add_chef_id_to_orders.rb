class AddChefIdToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :chef, null: true, foreign_key: true
  end
end
