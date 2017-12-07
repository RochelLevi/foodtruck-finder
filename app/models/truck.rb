class Truck < ApplicationRecord
  has_many :reviews
  has_many :items
  has_many :favorites
  has_many :schedules
  belongs_to :category
  belongs_to :location

  def rating
    if self.reviews.empty?
      nil
    else
      self.reviews.average(:rating).round(1)
    end
  end

  def self.trucks_by_zip(zip)
    if zip
      @trucks = Truck.all.select{|tr| tr.location.zip == zip}
    else
      @trucks = Truck.all
    end
    @trucks
  end


  def self.url_generator(zip)
    # @trucks = Truck.all.select{|tr| tr.location.zip == zip}
    @trucks = self.trucks_by_zip(zip)
    key = "AIzaSyBcQBWJhUdprvVfhh4CAmwY7ixtNbaQGvc"
    url = <<-URL
      https://maps.googleapis.com/maps/api/staticmap?center=#{zip}&zoom=14&size=3000x300&maptype=roadmap&key=#{key}
    URL

    @trucks.each_with_index do |tr, i|
      address = tr.location.street_address.gsub(/ /, '+') + ',' + tr.location.city.gsub(/ /, '+')  + ',' + tr.location.state.gsub(/ /, '+')
      url += "&markers=color:red%7Clabel:#{i+1}%7C#{address}"
    end
    url.gsub(/[\s]+/,'')
  end

end
