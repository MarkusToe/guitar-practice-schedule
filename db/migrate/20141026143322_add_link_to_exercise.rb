class AddLinkToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :link, :text
  end
end
