class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :addresses, :latitude, :float
  end
end
