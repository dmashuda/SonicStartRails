class CreateServiceLists < ActiveRecord::Migration
  def change
    create_table :service_lists do |t|
      t.string :title
      t.integer :rank
      t.text :comment

      t.timestamps null: false
    end
  end
end
