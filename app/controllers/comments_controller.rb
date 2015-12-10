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

  private
    def comment_params
      params.require(:comment).permit(:comment, :topic_id)
    end
end
