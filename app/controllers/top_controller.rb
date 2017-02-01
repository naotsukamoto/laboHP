class TopController < ApplicationController
  def index
    @page_title = "Top"
    @search=Head.search(params[:q])
    @heads=@search.result.order(:created_at => :DESC)
    # @head=Head.all.order(:created_at => :DESC)
    @user=User.all
  end


end
