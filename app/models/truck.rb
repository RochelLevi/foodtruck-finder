class Truck < ApplicationRecord
  has_many :reviews
  has_many :items
  has_many :favorites
  has_many :schedules
  belongs_to :category

  def rating
    if self.reviews.empty?
      "No Ratings Yet"
    else
      self.reviews.average(:rating).round(1)
    end
  end

end
