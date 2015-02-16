class Address < ActiveRecord::Base
  belongs_to :business
  after_validation :geocode

  geocoded_by :street_address

  def street_address
    [street, city, geographicalRegion, country].compact.join(', ')
  end
end
