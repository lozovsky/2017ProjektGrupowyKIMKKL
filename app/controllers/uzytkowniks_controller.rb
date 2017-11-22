class UzytkowniksController < ApplicationController
  
  before_action :sprawdz_logowanie
  layout false


  def index
    @uzytkownik = Uzytkownik.sortuj
  end

  def new
    @uzytkownik = Uzytkownik.new
  end

  def create
    @uzytkownik = Uzytkownik.new(user_parameters)
    if @uzytkownik.save
      #flash[:notice]= "Użytkownik został założony"
      redirect_to(:action => "index")
    else
      render("new")
    end
  end

  def edit
    @uzytkownik = Uzytkownik.find(params[:id])
  end

  def update
    @uzytkownik = Uzytkownik.find(params[:id])
    if @uzytkownik.update_attributes(user_parameters)
      #flash[:notice]= "Dane użytkownika #{@uzytkownik.uzytkownik} został zaktualizowany"
      redirect_to(:action => "index")
    else
      render("edit")
    end
  end

  def delete
  end


private
  def user_parameters
    params.require(:uzytkownik).permit(:imie,:nazwisko,:email,:uzytkownik,:password,:password_confirmation)
  end

  
end
