class AddLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :addresses, :longitude, :float
  end
end
