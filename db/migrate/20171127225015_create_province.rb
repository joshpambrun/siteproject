class CreateProvince < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :code
      t.decimal :pst
    end
    add_column :users, :address, :string
    add_reference :users, :province, foreign_key: true
  end
end
