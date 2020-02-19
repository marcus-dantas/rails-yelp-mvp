class Review < ApplicationRecord
  RANGE = 0..5
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: RANGE }
  validates :rating, numericality: true
  belongs_to :restaurant
end
