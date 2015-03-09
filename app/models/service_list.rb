class ServiceList < ActiveRecord::Base
  has_many :service_items
end
