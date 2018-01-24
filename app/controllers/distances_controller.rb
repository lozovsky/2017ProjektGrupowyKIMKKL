class DistancesController < ApplicationController
  
  def index
    @distances = Distance.all
  end

  def show
    @distance = Distance.find(params[:id])
  end

  def new
    @distance = Distance.new
    @stop_from = Stop.orderby
    @stop_to = Stop.orderby
  end

  def create
    @distance = Distance.new(distance_params)
    if @distance.save
      flash[:notice] = "Odcinek został pomyślnie dodany."
      redirect_to distances_path
    else
      render 'new'
    end 
  end

  def edit
    @distance = Distance.find(params[:id])
    @stop_from = Stop.orderby
    @stop_to = Stop.orderby
  end

  def update
    @distance = Distance.find(params[:id])

      if @distance.update_attributes(distance_params)
        flash[:notice] = "Odcinek został pomyślnie zaktualizowany."
        redirect_to distances_path
      else
        render action: 'edit'
      end
  end
  

private
  def distance_params
    params.require(:distance).permit(:from_stop_id, :to_stop_id,:travel_time, :created_at,:updated_at)
  end
end
