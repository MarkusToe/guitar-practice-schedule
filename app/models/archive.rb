class Archive < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :category
  belongs_to :key
end
