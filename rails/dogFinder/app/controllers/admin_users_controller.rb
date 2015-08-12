class AdminUsersController < ApplicationController

	def index
		@admin_users = AdminUser.all
	end

	def new
		@admin_user = AdminUser.new
	end

	def create
		@admin_user = AdminUser.new(admin_user_params)

		if @admin_user.save
			flash[:notice] = "Your login has been created successfully.  Please enter your shelter information."
			redirect_to action: 'show', id: @admin_user.id
		else
			render ('new')
	end

	def show
		@admin_user = AdminUser.find(params[:id])
	end

	def edit
		@admin_user = AdminUser.find(params[:id])
	end

	def update
		@admin_user = AdminUser.find(params[:id])

		if @admin_user.update_attributes(admin_user_params)
			flash[:notice] = 'Admin user update'
			redirect_to action: 'show', id: @admin_user.id
		else
			render('edit')
		end
	end

	def delete
		@admin_user = AdminUser.find(params[:id])
	end

	def destroy
		AdminUser.find(params[:id]).destroy
		flash[:notice] = "Admin user deleted."
		redirect_to action: 'index'


	end
end

private
	def admin_user_params
		params.require(:admin_user).permit(:first_name, :last_name, :email, :password, :shelter_name, :username )
	end
end