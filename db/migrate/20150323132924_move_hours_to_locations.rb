class MoveHoursToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :sunday_hours_close, :time
    add_column :locations, :monday_hours_close, :time
    add_column :locations, :tuesday_hours_close, :time
    add_column :locations, :wednesday_hours_close, :time
    add_column :locations, :thursday_hours_close, :time
    add_column :locations, :friday_hours_close, :time
    add_column :locations, :saturday_hours_close, :time

    add_column :locations, :sunday_hours_open, :time
    add_column :locations, :monday_hours_open, :time
    add_column :locations, :tuesday_hours_open, :time
    add_column :locations, :wednesday_hours_open, :time
    add_column :locations, :thursday_hours_open, :time
    add_column :locations, :friday_hours_open, :time
    add_column :locations, :saturday_hours_open, :time

    add_column :locations, :sunday_is_open, :boolean
    add_column :locations, :monday_is_open, :boolean
    add_column :locations, :tuesday_is_open, :boolean
    add_column :locations, :wednesday_is_open, :boolean
    add_column :locations, :thursday_is_open, :boolean
    add_column :locations, :friday_is_open, :boolean
    add_column :locations, :saturday_is_open, :boolean
  end
end
