class User < ApplicationRecord
  has_many :reviews
  has_many :favorites
  has_many :trucks, through: :favorites
  has_many :schedules
  belongs_to :location

  has_secure_password
  accepts_nested_attributes_for :location
end
