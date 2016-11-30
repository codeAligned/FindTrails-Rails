class Group < ApplicationRecord
  has_many :hiker_groups
  has_many :hikers, through: :hiker_groups
  has_many :trails
end
