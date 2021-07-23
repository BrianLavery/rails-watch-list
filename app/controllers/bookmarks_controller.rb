class BookmarksController < ApplicationController
  before_action :find_list, only: [:create, :new]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = params[:list_id]
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end

  def find_list
    @list = List.find(params[:list_id])
  end
end
