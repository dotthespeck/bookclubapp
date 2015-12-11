class CommentsController < ApplicationController

  def show
    @comments = Comment.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @comments = Comment.where(topic_id: params[:topic_id])
    @comment = Comment.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new(comment_params)
    @comment.topic_id = @topic.id

    if @comment.save
      redirect_to book_path(@topic.book_id), notice: "Comment created successfully"
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    if @comment.update_attributes(comment_params)
      redirect_to topic_path(@topic.id), notice: "Comment updated successfully"
    else
      render :edit, notice: "Comment did not update"
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    if @comment.destroy
      redirect_to topic_path(@topic.id), notice: "Comment was successfully deleted"
    else
      render :edit, notice: "Topic was not deleted"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :topic_id)
    end
end
