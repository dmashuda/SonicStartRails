class ExpandHoursOfOpperationOnBusinessEnd < ActiveRecord::Migration
  def change
    add_column :businesses, :sunday_hours_close, :time
    add_column :businesses, :monday_hours_close, :time
    add_column :businesses, :tuesday_hours_close, :time
    add_column :businesses, :wednesday_hours_close, :time
    add_column :businesses, :thursday_hours_close, :time
    add_column :businesses, :friday_hours_close, :time
    add_column :businesses, :saturday_hours_close, :time
  end
end
