class AddColumnsAssocShelterBelongsTo < ActiveRecord::Migration
  def change
  	add_column :dogs, :shelter_name, :string
  	add_column :dogs, :shelter_address, :string
  	add_column :dogs, :shelter_city, :string
  	add_column :dogs, :shelter_providence, :string
  	add_column :dogs, :shelter_website, :string
  	add_column :dogs, :shelter_email, :string
  end
end
