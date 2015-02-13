class AddBusinessIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :business_id, :integer
    add_index :users, :business_id
    add_column :businesses, :user_id, :integer
    add_index :businesses, :user_id
  end
end
