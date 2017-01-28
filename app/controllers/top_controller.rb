class TopController < ApplicationController
  def index
    @page_title = "Top"
    # @search=Head.search(content_cont: 'DB').result
    @search=Head.search(params[:q])
    @results=@search.result
    @head=Head.all.order(:created_at => :DESC)
    @user=User.all
  end


end
