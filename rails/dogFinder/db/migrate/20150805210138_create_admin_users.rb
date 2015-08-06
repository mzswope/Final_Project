class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
    	t.string   "first_name",      limit: 25
	    t.string   "last_name",       limit: 50
	    t.string   "email",           limit: 100, default: "", null: false
	    t.string   "username",        limit: 25
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "password_digest"
    	
      t.timestamps null: false
    end
  end
end
