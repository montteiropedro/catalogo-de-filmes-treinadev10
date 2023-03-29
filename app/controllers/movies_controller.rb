class MoviesController < ApplicationController
  def index
    @movies = Movie.order(created_at: :desc)
  end
  
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    return render :new, status: :unprocessable_entity unless @movie.save

    redirect_to @movie
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    return render :edit, status: :unprocessable_entity unless @movie.update(movie_params)

    redirect_to @movie
  end

  def destroy
    @movie = Movie.find(params[:id])

    redirect_to movies_path, status: :see_other if @movie.destroy
  end

  def toggle_status
    movie = Movie.find(params[:id])
    
    case
    when movie.published? then movie.draft!
    when movie.draft? then movie.published!
    end

    redirect_to movie
  end

  private
  
  def movie_params
    params.require(:movie).permit(:title, :year, :synopsis, :country, :duration, :director_id, :genre_id, :poster)
  end
end
