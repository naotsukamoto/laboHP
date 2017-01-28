class TopController < ApplicationController
  def index
    @page_title = "Top"
    @search=Head.search(params[:q])
    @head=Head.all.order(:created_at => :DESC)
    @user=User.all
  end


end
