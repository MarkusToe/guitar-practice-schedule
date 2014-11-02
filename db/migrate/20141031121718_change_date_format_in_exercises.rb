class ChangeDateFormatInExercises < ActiveRecord::Migration
  def change
    change_column :exercises, :last_practiced, :datetime
  end
end
