class Travel < ApplicationRecord
  has_many :points, dependent: :destroy
end
