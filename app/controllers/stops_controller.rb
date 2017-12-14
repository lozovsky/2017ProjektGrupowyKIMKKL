class StopsController < ApplicationController
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

  def delete
  	@stop = Stop.find(params[:id])
  end

  def destroy
  	@stop = Stop.find(params[:id]).destroy
  	flash[:notice] = "Przystanek '#{@stop.name}' został usunięty"
    redirect_to stops_path
  end


 private 
  def stop_params
  	params.require(:stop).permit(:name, :created_at, :updated_at)
  end

end
