class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :geographicalRegion
      t.string :country
      t.string :postal_code
      t.integer :business_id

      t.timestamps null: false
    end
    add_index :addresses, :business_id
  end
end
