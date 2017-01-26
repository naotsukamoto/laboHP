class UsersController < ApplicationController

  def index
    @page_title = "Members"

    # Sort by category
    # @paths_name = now_path
    # if @paths_name[2] == "teachers"
    #   @user = User.where(:category => 'tea')
    # elsif @paths_name[2] == "students"
    #   @user = User.where(:category => 'stu')
    # elsif @paths_name[2] == "obog"
    #   @user = User.where(:category => 'obog')
    # else
    #   @user = User.all
    # end

    if params['category'] == "tea"
      @user = User.where(:category => 'tea')
    elsif params['category'] == "stu"
      @user = User.where(:category => 'stu')
    elsif params['category'] == "obog"
      @user = User.where(:category => 'obog')
    else
      @user = User.all
    end
  end

  def now_path
    # 現在地をパスで取得
    full_path = request.path_info
    return @paths = full_path.split("/")
  end

  def show

  end



  private
  def user_params
    params.require(:user).permit(:name, :username, :location, :about, :image)
  end
end
