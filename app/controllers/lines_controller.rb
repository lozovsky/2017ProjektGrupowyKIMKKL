class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def show
    @line = Line.find(params[:id])
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "Linia tramwajowa '#{@line.name}' pomyślnie dodana."
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])

    if @line.update_attributes(line_params)
      flash[:notice] = "Linia tramwajowa '#{@line.name}' pomyślnie zaktualizowana."
      redirect_to lines_path
    else
      render 'edit'
    end
  end

  def delete
  end


private
  def line_params
    params.require(:line).permit(:name,:created_at,:updated_at)
  end
end
