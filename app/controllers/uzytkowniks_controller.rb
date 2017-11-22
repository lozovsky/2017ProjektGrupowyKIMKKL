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
  end

  def delete
  end


private
  def user_parameters
    params.require(:uzytkownik).permit(:imie,:nazwisko,:email,:uzytkownik,:password,:password_confirmation)
  end

  
end
