class AddLogoToBusiness < ActiveRecord::Migration
  def self.up
    add_attachment :businesses, :logo
  end

  def self.down
    remove_attachment :businesses, :logo
  end
end
