class Business < ActiveRecord::Base
  belongs_to :user
  has_many :addresses
  has_many :service_items
  has_attached_file :logo
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
