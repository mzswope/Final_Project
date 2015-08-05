class RemoveColumnsAndRenameColumn < ActiveRecord::Migration
  def change
  	remove_column :dogs, :shelter_name, :string
  	remove_column :dogs, :shelter_address, :string
  	remove_column :dogs, :shelter_city, :string
  	remove_column :dogs, :shelter_providence, :string
  	remove_column :dogs, :shelter_website, :string
  	remove_column :dogs, :shelter_email, :string
  	rename_column :shelters, :providence, :province
  end
end
