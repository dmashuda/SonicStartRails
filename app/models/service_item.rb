class ServiceItem < ActiveRecord::Base
  belongs_to :business
  belongs_to :service_list
  validates :title, presence: true
end
