class CommentsController < ApplicationController

  def new
    @comment = Comment.new(user_id: params[:user_id])
  end

  def create
    raise params.inspect
  end

end
