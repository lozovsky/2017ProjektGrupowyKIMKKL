class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
    render html: "hello"
  end

private

  def sprawdz_logowanie
		unless session[:uzytkownik_id]
			#flash[:notice] = "Jestes niezalogowany"
			redirect_to(:controller => 'dostep', :action => 'login')
			return false
		else
			return true
		end
  end
end
