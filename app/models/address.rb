class Address < ActiveRecord::Base
  belongs_to :business
  after_validation :geocode

  validates :street,:city, :geographicalRegion, :country, :postal_code, :presence => true

  geocoded_by :street_address

  def street_address
    [street, city, geographicalRegion, country].compact.join(', ')
  end
end
