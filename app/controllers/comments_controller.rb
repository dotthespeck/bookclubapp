class CommentsController < ApplicationController

  
  def show
    @comments = Comment.find(params[:id])
  end
