class SitesController < ApplicationController

	def home
		@dogs = Dog.all.limit(9)
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
