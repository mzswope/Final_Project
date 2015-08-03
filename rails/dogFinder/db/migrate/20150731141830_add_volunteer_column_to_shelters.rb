class AddVolunteerColumnToShelters < ActiveRecord::Migration
  def change
  	add_column :shelters, :volunteers, :string
  end
end
