class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def new_application
  	@user_application = User.new
  end

  def create_application
  	if user_signed_in?
	  	@user_application = User.new(params[:user])
	  	@user_application.save
	  	redirect_to home_show_application_path
	  end
  end

  def show_application
  	@user_application = User.find(params[:id])
  end
end