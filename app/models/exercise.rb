class Exercise < ActiveRecord::Base
  belongs_to :category
  belongs_to :key
  has_many :archives

  def to_date
    self.last_practiced.to_date
  end
end
