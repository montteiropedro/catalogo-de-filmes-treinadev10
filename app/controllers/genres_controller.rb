class GenresController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end
  
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)

    flash[:error] = "Gênero inválido ou já registrado" unless @genre.save

    redirect_to genres_path
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    return render :edit, status: :unprocessable_entity unless @genre.update(genre_params)

    redirect_to @genre
  end

  def destroy
    @genre = Genre.find(params[:id])

    redirect_to genres_path, status: :see_other if @genre.destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
