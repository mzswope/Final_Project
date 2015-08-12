class AddAdminIdCoumnToShelters < ActiveRecord::Migration
  def change
  	add_column :shelters, :admin_user_id, :integer
  end
end
