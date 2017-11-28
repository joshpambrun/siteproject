class AddHstToProvince < ActiveRecord::Migration[5.1]
  def change
    add_column :provinces, :hst, :decimal
  end
end
