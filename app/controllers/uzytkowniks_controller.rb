class UzytkowniksController < ApplicationController
  
  before_action :sprawdz_logowanie
  layout false


  def index
    @uzytkownik = Uzytkownik.sortuj
  end

  def new
  end

  def edit
  end

  def delete
  end
  
end
