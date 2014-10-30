class Exercise < ActiveRecord::Base
  belongs_to :category
  belongs_to :key
  has_many :archives
end
