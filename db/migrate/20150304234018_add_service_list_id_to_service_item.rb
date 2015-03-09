class AddServiceListIdToServiceItem < ActiveRecord::Migration
  def change
    add_column :service_items, :service_list_id, :integer
    add_index :service_items, :service_list_id
  end
end
