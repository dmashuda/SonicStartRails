class Business < ActiveRecord::Base
  belongs_to :user
  has_many :addresses
  has_many :service_items
end
