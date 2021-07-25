class CommentsController < ApplicationController
  before_action :find_list, only: [:create]

  def create
    @comment = Comment.new(comment_params)
    @comment.list_id = params[:list_id]
    if @comment.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:opinion)
  end

  def find_list
    @list = List.find(params[:list_id])
  end
end
