class SheltersController < ApplicationController

	before_action = :confirm_logged_in

	def index
     	@shelters = Shelter.order('name ASC')
  	end

	def new
		@admin_user = AdminUser.find params[:admin_user_id] 
    	@shelter = @admin_user.shelters.new 
	end

	def create
		@admin_user = AdminUser.find params[:admin_user_id]  
    	@shelter = @admin_user.shelters.new shelter_params

		if @shelter.save
			flash[:notice] = "Your shelter has been successfully added"
			redirect_to action: 'index'
		else
			render('new')
		end
	end

	def show
		@shelter = Shelter.find(params[:id])
	end

	def show_dogs
		@shelter = Shelter.find(params[:id])
		@show_dogs = @shelter.dogs
	end

	def edit
		@shelter = Shelter.find(params[:admin_user_id])
	end

	def update
		@shelter = Shelter.find(params[:id])


		if @shelter.update_attributes(shelter_params)
			flash[:notice] = "Your shelter information has been successfully updated"
			redirect_to action: 'show', id: @shelter.id
		else
			render('edit')
		end
	end

	def destroy
		@shelter = Shelter.find(params[:id]).destroy
		flash[:notice] = "#{@shelter.name} has been deleted"
		redirect_to action: 'index'
	end

	private

		def shelter_params
			params.require(:shelter).permit(:avatar, :name, :address, :city, :province, :postal_code, :phone, :website, :email, :hours, :volunteers, :admin_user_id)
		end
end
