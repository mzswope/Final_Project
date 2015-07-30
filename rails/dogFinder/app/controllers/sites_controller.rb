class SitesController < ApplicationController

	def home
		@dogs = Dog.all.limit(9)
		render :home
	end

	def expect
		render :what_to_expect
	end
end
