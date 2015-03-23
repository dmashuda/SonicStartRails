class RemoveHoursFromBusiness < ActiveRecord::Migration
  def change
    remove_column :businesses, :sunday_hours_close
    remove_column :businesses, :monday_hours_close
    remove_column :businesses, :tuesday_hours_close
    remove_column :businesses, :wednesday_hours_close
    remove_column :businesses, :thursday_hours_close
    remove_column :businesses, :friday_hours_close
    remove_column :businesses, :saturday_hours_close

    remove_column :businesses, :sunday_hours
    remove_column :businesses, :monday_hours
    remove_column :businesses, :tuesday_hours
    remove_column :businesses, :wednesday_hours
    remove_column :businesses, :thursday_hours
    remove_column :businesses, :friday_hours
    remove_column :businesses, :saturday_hours
  end
end
