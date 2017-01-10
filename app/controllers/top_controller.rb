class TopController < ApplicationController
  def index
    @page_title = "Top"

    @head=Head.all.order(created_at: :DESC)

  end
end
