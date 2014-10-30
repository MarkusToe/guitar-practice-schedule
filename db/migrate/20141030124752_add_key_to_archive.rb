class AddKeyToArchive < ActiveRecord::Migration
  def change
    Archive.delete_all
    add_column :archives, :key_id, :integer
    add_column :archives, :category_id, :integer
  end
end
