class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5).to_a
  validates :rating, :content, :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true}
  validates :rating, inclusion: { in: RATING}
end
