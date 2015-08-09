class UsersController < ApplicationController

  def new
  	@users = User.all
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	@users = User.all 
  	render 'new'
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end

end
