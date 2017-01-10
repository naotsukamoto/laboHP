class ResearchsController < ApplicationController

  def index

  end

  def show
    @thesis = Study.all.order(published_year_at: :DESC)
  end
end
