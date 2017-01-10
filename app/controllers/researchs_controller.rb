class ResearchsController < ApplicationController

  def index

  end

  def show
    @thesis = Study.all
  end
end
