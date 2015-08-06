class AddColumnToAdminSuerSetForeignKey < ActiveRecord::Migration
  def change
  	add_column :admin_users, :shelter_name, :string
  	add_index :admin_users, :username
  end
end
