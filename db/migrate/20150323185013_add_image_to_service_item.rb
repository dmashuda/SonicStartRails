class AddImageToServiceItem < ActiveRecord::Migration
  def self.up
    add_attachment :service_items, :image
  end

  def self.down
    remove_attachment :service_items, :image
  end
end
