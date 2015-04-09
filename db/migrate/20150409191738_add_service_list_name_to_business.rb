class AddServiceListNameToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :service_list_name, :string

  end
end
