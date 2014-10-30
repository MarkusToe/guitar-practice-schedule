class Key < ActiveRecord::Base
  has_many :exercises
  has_many :archives
end
