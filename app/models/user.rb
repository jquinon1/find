class User < ApplicationRecord
  has_secure_password
  has_many :travels, foreign_key: :created_by
  validates_uniqueness_of :email
end
