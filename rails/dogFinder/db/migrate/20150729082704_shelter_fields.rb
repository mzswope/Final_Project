class ShelterFields < ActiveRecord::Migration

  def up
  	add_column :shelters, :name, :string
  	add_column :shelters, :address, :string
  	add_column :shelters, :city, :string
  	add_column :shelters, :providence, :string
  	add_column :shelters, :postal_code, :string
  	add_column :shelters, :phone, :string
  	add_column :shelters, :website, :string
  	add_column :shelters, :email, :string
  	add_column :shelters, :hours, :string
  	add_index :shelters, :name
  	add_index :shelters, :providence
  	add_index :shelters, :postal_code
  end

  def down
  	add_index :shelters, :postal_code
  	add_index :shelters, :providence	
  	add_index :shelters, :name
  	remove_column :shelters, :hours, :string
  	remove_column :shelters, :email, :string
  	remove_column :shelters, :website, :string
  	remove_column :shelters, :phone, :string
  	remove_column :shelters, :postal_code, :string
  	remove_column :shelters, :providence, :string
  	remove_column :shelters, :city, :string
  	remove_column :shelters, :address, :string
  	remove_column :shelters, :name, :string
  end
end
