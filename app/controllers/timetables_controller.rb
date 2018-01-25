class TimetablesController < ApplicationController

	  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
	  before_action :admin_user, only: [:index, :edit, :update, :destroy]

	
	def index
		@timetables = Timetable.all
	end

	def show
		@timetable = Timetable.find(params[:id])
	end

	def new
		@timetable = Timetable.new
		@line = Line.orderby
	end

	def create
		@timetable = Timetable.new(timetable_params)
		if @timetable.save
			flash[:notice] = "Rozkład jazdy pomyślnie dodany."
			redirect_to timetables_path
		else
			@line = Line.orderby
			render 'new'
		end
	end

	def edit
		@timetable = Timetable.find(params[:id])
		@line = Line.orderby
	end

	def update
	  	@timetable = Timetable.find(params[:id])

	  	if @timetable.update_attributes(timetable_params)
	  		flash[:notice] = "Rozkład jazdy został pomyślnie zaktualizowany."
	  		redirect_to timetables_path
	  	else
	  		@line = Line.orderby
	  		render action: 'edit'
	  	end
 	end
	

	def delete
		@timetable = Timetable.find(params[:id])
	end

	def destroy
		@timetable = Timetable.find(params[:id])
	    @timetable.destroy
	    flash[:notice] = "Pomyślnie usunięto rozkład jazdy"
	    redirect_to timetables_path
	end

private
	def timetable_params
		params.require(:timetable).permit(:line_id, :departure_time, :created_at,:updated_at)
	end
end
