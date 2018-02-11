class Point < ApplicationRecord
  belongs_to :travel

  validates_presence_of :latitude, :longitude
end
