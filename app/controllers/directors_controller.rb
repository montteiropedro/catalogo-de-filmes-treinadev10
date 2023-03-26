class DirectorsController < ApplicationController
  def index
    @directors = Director.order(:name)
  end
  
  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    return render :new, status: :unprocessable_entity unless @director.save

    redirect_to @director
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    return render :edit, status: :unprocessable_entity unless @director.update(director_params)

    redirect_to @director
  end

  def destroy
    @director = Director.find(params[:id])

    redirect_to directors_path, status: :see_other if @director.destroy
  end

  private

  def director_params
    params.require(:director).permit(:name, :nationality, :birthday, :genre_id)
  end
end
