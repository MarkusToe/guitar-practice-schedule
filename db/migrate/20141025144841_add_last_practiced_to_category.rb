class AddLastPracticedToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :last_practiced, :date
  end
end
