class Business < ActiveRecord::Base
  belongs_to :user
  has_many :addresses
  has_many :service_items
  has_attached_file :logo
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  custom_message = 'Start Time must be before end time'

  validates :monday_hours, date: {before: :monday_hours_close, message: custom_message}
  validates :tuesday_hours, date: {before: :tuesday_hours_close}
  validates :wednesday_hours, date: {before: :wednesday_hours_close}
  validates :thursday_hours, date: {before: :thursday_hours_close}
  validates :friday_hours, date: {before: :friday_hours_close}
  validates :saturday_hours, date: {before: :saturday_hours_close}
  validates :sunday_hours, date: {before: :sunday_hours_close}

  after_initialize :init


  def init
    self.sunday_hours ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.monday_hours  ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.tuesday_hours  ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.wednesday_hours ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.thursday_hours ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.friday_hours ||= Time.new(2015, 02, 25, 9, 0, 0)
    self.saturday_hours ||= Time.new(2015, 02, 25, 9, 0, 0)

    self.sunday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.monday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.tuesday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.wednesday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.thursday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.friday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
    self.saturday_hours_close ||= Time.new(2015, 02, 25, 17,0,0 )
  end




end
