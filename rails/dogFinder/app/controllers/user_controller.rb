class UserController < ApplicationController

  def index
  	#renders the template associated with index or whatever is specified
  end

  def hello
  	@array = [1, 2, 3, 4, 5]
  	@id = params['id'].to_i
  	@page = params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'user', :action => 'index')
  end
end
