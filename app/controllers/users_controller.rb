class UsersController < ApplicationController

  def index
    @page_title = "Members"

    # Sort by category
    @paths_name = now_path
    if @paths_name[2] == "teachers"
      @user = User.where(:category => 'tea')
    elsif @paths_name[2] == "students"
      @user = User.where(:category => 'stu')
    elsif @paths_name[2] == "obog"
      @user = User.where(:category => 'obog')
    end
  end

  def now_path
    # 現在地をパスで取得
    full_path = request.path_info
    return @paths = full_path.split("/")
  end

  def show
    @user=User.find_by(:username => params[:username])
  end



  private
  def user_params
    params.require(:user).permit(:name, :username, :location, :about, :image)
  end
end
