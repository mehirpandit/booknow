class HallsController < ApplicationController

  before_action :admin_user,     only: :destroy
  
  def index
  	@halls = Hall.paginate(page: params[:page])
  end

  def show
    @hall = Hall.find(params[:id])
  end

  def new
  	@hall = Hall.new
  end

  def create
    @hall = Hall.new(hall_params)
    if @hall.save
       redirect_to @hall      # Handle a successful save.
    else
      render 'new'
    end
  end

   def edit
    @hall = Hall.find(params[:id])
  end

def update
    @hall = Hall.find(params[:id])
    if @hall.update_attributes(hall_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
    Hall.find(params[:id]).destroy
    flash[:success] = "Hall deleted"
    redirect_to halls_url
  end

  private

    def hall_params
      params.require(:hall).permit(:hall_name, :no_of_seats)
    end
end
