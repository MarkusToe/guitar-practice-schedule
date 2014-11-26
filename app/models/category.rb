class Category < ActiveRecord::Base
  has_many :exercises, -> { order "last_practiced ASC" }
  has_many :archives

  def recent_exercise
    exercises.where('last_practiced BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).first() || exercises.first()
  end
end