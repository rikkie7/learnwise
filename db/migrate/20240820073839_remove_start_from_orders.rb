class RemoveStartFromOrders < ActiveRecord::Migration[7.1]
  def change
    remove_column :orders, :start, :string
  end
end
