class Location < ActiveRecord::Base
  belongs_to :business
  after_validation :geocode

  validates :street,:city, :geographicalRegion, :country, :postal_code, :presence => true

  geocoded_by :street_address

  def street_address
    [street, city, geographicalRegion, country].compact.join(', ')
  end

  custom_message = 'Start Time must be before end time'

  validates :monday_hours_open, date: {before: :monday_hours_close, message: custom_message}
  validates :tuesday_hours_open, date: {before: :tuesday_hours_close, message: custom_message}
  validates :wednesday_hours_open, date: {before: :wednesday_hours_close, message: custom_message}
  validates :thursday_hours_open, date: {before: :thursday_hours_close, message: custom_message}
  validates :friday_hours_open, date: {before: :friday_hours_close, message: custom_message}
  validates :saturday_hours_open, date: {before: :saturday_hours_close, message: custom_message}
  validates :sunday_hours_open, date: {before: :sunday_hours_close, message: custom_message}

  after_initialize :init


  def init
    self.sunday_hours_open ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.monday_hours_open  ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.tuesday_hours_open  ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.wednesday_hours_open ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.thursday_hours_open ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.friday_hours_open ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.saturday_hours_open ||= Time.new(2015, 02, 25, 9, 0, 0)

    self.sunday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.monday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.tuesday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.wednesday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.thursday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.friday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.saturday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
  end

end
