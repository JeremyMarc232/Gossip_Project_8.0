class Gossip < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :title, length: { minimum: 3 }
  validates :title, length: { maximum: 14 }
end
