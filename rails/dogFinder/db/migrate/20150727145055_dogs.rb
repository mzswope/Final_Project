class Dogs < ActiveRecord::Migration
  def up
  	add_column("dogs", "breed", :string, :after => "name")
  end

  def down
  	remove_column("dogs", "breed", :string, :after => "name")
  end
end
