class MoviesController < ApplicationController

    
def index
  @movies = Movie.search(params[:search])
  
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
       redirect_to @movie
    else
      render 'new'
    end
  end

def edit
   @movie = Movie.find(params[:id])
    
  end

def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      redirect_to @movie

    else
      render 'edit'
    end
  end

 def destroy
    Movie.find(params[:id]).destroy
    flash[:success] = "Movie deleted"
    redirect_to movies_path
  end

private

    def movie_params
      params.require(:movie).permit(:name, :category, :avatar, :cast, :director, :producer, :synopsis, :review, :rating)
    end
  end
