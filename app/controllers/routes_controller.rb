class RoutesController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]


  
  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
    @route = Route.new
    @line = Line.all
    @distance = Distance.all
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      flash[:notice] = "Trasa została pomyślnie dodana."
      redirect_to routes_path
    else
      @line = Line.all
      @distance = Distance.all
      render 'new'
    end 
  end

  def edit
    @route = Route.find(params[:id])
    @line = Line.orderby
    @distance = Distance.orderby
  end

  def update
    @route = Route.find(params[:id])

    if @route.update_attributes(route_params)
      flash[:notice] = "Trasa została pomyślnie zaktualizowana."
      redirect_to routes_path
    else
      @line = Line.all
      @distance = Distance.all
      render action: 'edit'
    end
  end

  def delete
    @route = Route.find(params[:id])
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    flash[:notice] = "Pomyślnie usunięto trasę"
    redirect_to routes_path
  end

private
   def route_params
    params.require(:route).permit(:line_id, :distance_id,:stop_number, :created_at,:updated_at)
  end
end


