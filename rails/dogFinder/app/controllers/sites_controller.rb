class SitesController < ApplicationController

	def home
		@filters = DogsFilters.new(params[:age])
		@dogs = Dog.all
		if !@filters.age.nil?
			@dogs = @dogs.where(age: @filters.age)
		end
#		if !@filters.size.nil?
#			@dogs = @dogs.where(size: @filters.size)
#		end
		render :home
	end

	def filter
		filter_by = params[:filter]
		filter_value = params[:value]
		# @dogs = 
	end


	def expect
		render :what_to_expect
	end
end
