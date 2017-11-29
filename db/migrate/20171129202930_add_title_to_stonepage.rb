class AddTitleToStonepage < ActiveRecord::Migration[5.1]
  def change
    add_column :stonepages, :title, :string
    add_column :stonepages, :content, :text
  end
end
