class Uzytkownik < ApplicationRecord
	has_secure_password

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates   :imie,
				:presence => { :in => true, :message => ": Pole nie może być puste."}

	validates   :nazwisko,
				:presence => { :in => true, :message => ": Pole nie może być puste."}

	validates   :uzytkownik,
				:length => {:within => 4..25, :message => ": Nazwa użytkownika musi zawierać się pomiedzy 4 a 25 zanków."},
				:uniqueness => true

	validates :email,
			  :presence => true,
			  :length => {:maximum => 100},
			  :format => {:with => EMAIL_REGEX, :message => ": Błędny format adresu email."},
			  :confirmation => true

	scope :sortuj, lambda{order("uzytkownik ASC")}
end
