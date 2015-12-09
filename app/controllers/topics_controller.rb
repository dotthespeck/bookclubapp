class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @book = Book.find(params[:book_id])
    @topic = Topic.new
  end

  def create
    @book = Book.find(params[:book_id])
    @topic = Topic.new(topic_params)
    @topic.book_id = @book.id

    if @topic.save
      redirect_to book_path(@book.id), notice: "Topic created successfully"
    else
      render :new
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :book_id)
    end
end
