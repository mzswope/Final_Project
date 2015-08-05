class SitesController < ApplicationController

	def home

		if params[:searching]
			search_params = {}
			search_params[:age] = params[:age],
			search_params[:size] = params[:size],
			search_params[:gender] = params[:gender]
			@dogs = Dog.where(search_params)
		else
			@dogs = Dog.all.limit(9)
		end

		render :home
	end

	def expect
		render :what_to_expect
	end
end
