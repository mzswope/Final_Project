class SitesController < ApplicationController

	def home
		render :home
	end

	def expect
		render :what_to_expect
	end
end
