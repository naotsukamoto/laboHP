class UsersController < ApplicationController

  def index
    @page_title = "Members"
  end

  def show
    @user=User.find_by(:username => params[:username])
  end
end
