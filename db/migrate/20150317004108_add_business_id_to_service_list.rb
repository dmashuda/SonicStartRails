class AddBusinessIdToServiceList < ActiveRecord::Migration
  def change
    add_column :service_lists, :business_id, :integer
  end
end
