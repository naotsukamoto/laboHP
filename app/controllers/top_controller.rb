class TopController < ApplicationController
  def index
    @page_title = "Top"
    @search=Head.page(params[:page]).per(4).search(params[:q])
    @heads=@search.result.order(:created_at => :DESC)
    # @head=Head.all.order(:created_at => :DESC)
    @user=User.all
    @items=Head.page(params[:page]).order(:created_at => :DESC).per(2)
    respond_to do |format|
      format.html
      format.js
    end
  end


end
