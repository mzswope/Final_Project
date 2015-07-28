class SheltersController < ApplicationController

	def index
     	@shelters = Shelter.all.sort
  	end

	def new
		@shelter = Shelter.new
	end

	def create
		@shelter = Shelter.new(dog_params)

		if @shelter.save
			redirect_to action: 'index'
		else
			render('new')
		end
	end

	def show
		@shelter = Shelter.find_by(params[:id])
	end

	def edit
		@shelter = Shelter.find_by(params[:id])
	end

	def update
		@shelter = Shelter.find_by(params[:id])


		if @shelter = update.attributes(shelter_params)
			redirect_to action: 'show', id: @shelter.id
		else
			render('edit')
		end
	end

	def delete
	end

	private

		def shelter_params
			params.require(:shelter).permit(:avatar, :name, :address, :phone, :website, :hours)
		end
end
