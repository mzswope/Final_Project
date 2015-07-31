class DogsController < ApplicationController

	def dogs
		render :index
	end

	def index
     	@dogs = Dog.all
  	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)

		if @dog.save
			flash[:notice] = "Your record has been successfully created"
			redirect_to action: 'index'
		else
			render('new')
		end
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def edit
		@dog = Dog.find(params[:id])
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
			params.require(:dog).permit(:avatar, :name, :gender, :size, :age, :people, :kids, :other_dogs)
		end
end
