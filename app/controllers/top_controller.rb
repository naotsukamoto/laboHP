class TopController < ApplicationController
  def index
    @page_title = "Top"

    @head=Head.all

  end
end
