class ServiceItem < ActiveRecord::Base
  belongs_to :business
  belongs_to :service_list
  validates :title, presence: true
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
