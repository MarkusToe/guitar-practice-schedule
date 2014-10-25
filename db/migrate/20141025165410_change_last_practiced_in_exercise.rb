class ChangeLastPracticedInExercise < ActiveRecord::Migration
  def change
    change_column :exercises, :last_practiced, :time
  end
end
