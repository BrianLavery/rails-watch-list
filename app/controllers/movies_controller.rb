class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    if params[:list_id]
      @list = List.find(params[:list_id])
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :rating, :photo)
  end
end
