class UserAppsController < ApplicationController

  def new
	  @user_app = UserApp.new
  end

	def create
    @user = current_user
    @user_app = @user.build_user_app(params[:user_app])
     
    if @user_app.save
      redirect_to @user_app
    else
      render 'new'
    end
	end

	def show
    @user = current_user
		@user_app = @user.user_app
	end
end
