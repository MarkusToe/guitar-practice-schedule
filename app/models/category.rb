class Category < ActiveRecord::Base
  has_many :exercises, -> { order "last_practiced ASC" }

  def recent_exercise
    exercises.first
  end
end