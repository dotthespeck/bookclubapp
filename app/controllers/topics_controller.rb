class TopicsController < ApplicationController

  def show
    #@book = Book.find(params[:book_id])
    @topic = Topic.find(params[:id])
  end
end
