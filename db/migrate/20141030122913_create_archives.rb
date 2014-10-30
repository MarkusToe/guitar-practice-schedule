class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.references :exercise, index: true
      t.integer :tempo
      t.integer :time
      t.text :note
      t.text :link

      t.timestamps null: false
    end
  end
end
