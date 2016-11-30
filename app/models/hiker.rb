class Hiker < ApplicationRecord
  has_many :hiker_groups
  has_many :groups, through: :hiker_groups
  has_many :trails
end
