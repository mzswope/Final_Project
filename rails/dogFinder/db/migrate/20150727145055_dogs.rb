class Dogs < ActiveRecord::Migration
  def change
  	add_column("dogs", "breed", :string, :after => "name")
  end
end
