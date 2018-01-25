class StopsController < ApplicationController
   
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def index
  	@stops = Stop.all
  end

  def new
  	@stop = Stop.new
  end

  def create
  	@stop = Stop.new(stop_params)

  	if @stop.save
    	flash[:notice] = "Przystanek został pomyślnie dodany."
    	redirect_to stops_path
    else
      render action: 'new'
    end
  end

  def edit
  	@stop = Stop.find(params[:id])
  end

  def update
  	@stop = Stop.find(params[:id])

  	if @stop.update_attributes(stop_params)
  		flash[:notice] = "Przystanek został pomyślnie zaktualizowany."
  		redirect_to stops_path
  	else
  		render action: 'edit'
  	end
  end

  def show
  	@stop = Stop.find(params[:id])
  end

private 
  def stop_params
  	params.require(:stop).permit(:name, :created_at, :updated_at)
  end

end
