class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :summary
      t.string :tagLine
      t.string :hoursOfOpperation
      t.date :serviceValidTil
      t.string :domain

      t.timestamps null: false
    end
  end
end
