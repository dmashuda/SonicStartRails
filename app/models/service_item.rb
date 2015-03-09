class ServiceItem < ActiveRecord::Base
  belongs_to :business
  belongs_to :service_list
end
