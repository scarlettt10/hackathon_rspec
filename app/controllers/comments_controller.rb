class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
  end

  def create
    @comment = current_user.comments.new(
        if @comment.save
          redirect_to user_comments_path
        else
          render :new
        end
  end

  def edit
  end

  def update
  end

  def destroy
    @comment.destroy
    redirect_to user_comments([:user_id])
  end

  private 
  def set_post
    @post = Post.find(params[:id])
  end
end
