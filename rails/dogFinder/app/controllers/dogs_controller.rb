class DogsController < ApplicationController

	def dogs
		render :index
	end

	def index
		@shelter = Shelter.find(params[:shelter_id])
     	@dogs = @shelter.dogs

     	# @search = Dogs.search(params[:q])
     	# @dogs = @search.results

  	end

	def new
		@shelter = Shelter.find params[:shelter_id] 
    	@dog = @shelter.dogs.new 
	
	end

	def create
		@shelter = Shelter.find params[:shelter_id]
    	@dog = @shelter.dogs.new dog_params
		
		if @dog.save
			flash[:notice] = "Your record has been successfully created"
			redirect_to action: 'index', controller: 'dogs', shelter_id: @shelter.id
		else
			render('new')
		end
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def edit
		@shelter = Shelter.find params[:shelter_id]
		@dog = @shelter.dogs.find params[:id]
	end

	def update
		@dog = Dog.find(params[:id])


		if @dog.update_attributes(dog_params)
			flash[:notice] = "Your record has been successfully updated"
			redirect_to action: 'show', id: @dog.id
		else
			render('edit')
		end
	end

	def destroy
		@dog = Dog.find(params[:id]).destroy
		flash[:notice] = "#{@dog.name} has been deleted"
		redirect_to action: 'index'
	end

	private

		def dog_params
			params.require(:dog).permit(:avatar,:name, :breed, :gender, :size, :age, :people, :kids, :other_dogs, :shelter_id)
		end
end
