class User < ApplicationRecord
  has_secure_password
  has_many :gossips
  has_many :comments
end