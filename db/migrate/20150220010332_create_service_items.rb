class CreateServiceItems < ActiveRecord::Migration
  def change
    create_table :service_items do |t|
      t.string :title
      t.text :summary
      t.string :price
      t.integer :business_id

      t.timestamps null: false
    end
    add_index :service_items, :business_id
  end
end
