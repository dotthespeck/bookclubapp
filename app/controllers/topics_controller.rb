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

  def edit
    @book = Book.find(params[:book_id])
    @topic = Topic.find(params[:id])
  end

  def update
    @book = Book.find(params[:book_id])
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)

    if @topic.update_attributes(topic_params)
      redirect_to root_path, notice: "Topic updated successfully"
    else
      render :edit, notice: "Topic did not update"
    end
  end

  def destroy
    @book = Book.find(params[:book_id])
    @topic = Topic.find(params[:id])
    @topic.destroy

    if @topic.destroy
      redirect_to book_path(@book.id), notice: "Topic was successfully deleted"
    else
      render :edit, notice: "Topic was not deleted"
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :book_id)
    end
end
