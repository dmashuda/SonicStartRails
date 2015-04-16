class AddTemplateToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :template, :string
  end
end
