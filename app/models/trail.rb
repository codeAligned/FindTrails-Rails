class Trail < ApplicationRecord
  belongs_to :hiker
  belongs_to :group 
end
