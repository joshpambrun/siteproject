class AddGstToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :address, :string
    add_reference :orders, :province, foreign_key: true
  end
end
