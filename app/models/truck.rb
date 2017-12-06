class Truck < ApplicationRecord
  has_many :reviews
  has_many :items
  has_many :favorites
  has_many :schedules
  belongs_to :category

  def rating
    self.reviews.average(:rating)
  end

end
