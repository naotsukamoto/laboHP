class TopController < ApplicationController
  def index
    @page_title = "Top"

    @head=Head.all.order(created_at: :DESC)

    @users=User.all

  end
end
