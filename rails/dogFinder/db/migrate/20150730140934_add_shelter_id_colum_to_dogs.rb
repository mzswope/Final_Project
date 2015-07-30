class AddShelterIdColumToDogs < ActiveRecord::Migration
  def change
  	add_column :dogs, :shelter_id, :integer
  end
end
