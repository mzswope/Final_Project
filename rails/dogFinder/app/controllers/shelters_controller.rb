class SheltersController < ApplicationController

	def index
     	@shelters = Shelter.all
  	end

	def new
		@shelter = Shelter.new
	end

	def create
		@shelter = Shelter.new(shelter_params)

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

	def edit
		@shelter = Shelter.find(params[:id])
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
			params.require(:shelter).permit(:avatar, :name, :address, :city, :providence, :postal_code, :phone, :website, :email, :hours, :volunteers)
		end
end
