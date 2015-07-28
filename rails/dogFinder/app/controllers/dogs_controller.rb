class DogsController < ApplicationController

	def index
     	@dogs = Dog.all.sort
  	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)

		if @dog.save
			redirect_to action: 'index'
		else
			render('new')
		end
	end

	def show
		@dog = Dog.find_by(params[:id])
	end

	def edit
		@dog = Dog.find_by(params[:id])
	end

	def update
		@dog = Dog.find_by(params[:id])


		if @dog = update.attributes(dog_params)
			redirect_to action: 'show', id: @dog.id
		else
			render('edit')
		end
	end

	def delete
	end

	private

		def dog_params
			params.require(:dog).permit(:avatar, :name, :gender, :size, :age, :people, :kids, :other_dogs)
		end
end
