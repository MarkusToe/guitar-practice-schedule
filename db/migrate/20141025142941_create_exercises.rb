class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.date :last_practiced
      t.integer :tempo
      t.integer :time
      t.text :note
      t.integer :category_id
      t.integer :key_id

      t.timestamps
    end
  end
end
