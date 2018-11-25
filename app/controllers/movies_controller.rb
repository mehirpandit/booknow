class MoviesController < ApplicationController
  
def index
  @movies = Movie.paginate(page: params[:page])
  
end

def show
    @movie = Movie.find(params[:id])
     
  end

  def new
  	 @movie = Movie.new
  end

   def create
    @movie = Movie.new(movie_params)
    if @movie.save
       # Handle a successful save.
    else
      render 'new'
    end
  end

def edit
    
  end

 def destroy
    Movie.find(params[:id]).destroy
    flash[:success] = "Movie deleted"
    redirect_to movies_path
  end

private

    def movie_params
      params.require(:movie).permit(:name, :category)
    end

  end