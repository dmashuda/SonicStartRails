class ExpandHoursOfOpperationOnBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :sunday_hours, :time
    add_column :businesses, :monday_hours, :time
    add_column :businesses, :tuesday_hours, :time
    add_column :businesses, :wednesday_hours, :time
    add_column :businesses, :thursday_hours, :time
    add_column :businesses, :friday_hours, :time
    add_column :businesses, :saturday_hours, :time

    remove_column :businesses, :hoursOfOpperationdb
  end
end
