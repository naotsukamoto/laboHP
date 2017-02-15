class Api::V1::CommentsController < ApplicationController

  def index
    @data=[
      {auther:"Pete Hunt", text:"Hello, world! This is one comment"},
      {auther:"nao", text:"Hello, world! this is *another* comment."}
    ]
  end
end
