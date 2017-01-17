class UsersController < ApplicationController

  def index
    @page_title = "Members"
    @user = User.all
  end

  def show
    @user=User.find_by(:username => params[:username])
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :location, :about, :image)
  end
end
