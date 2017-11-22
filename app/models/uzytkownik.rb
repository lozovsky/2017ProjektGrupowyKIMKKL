class Uzytkownik < ApplicationRecord
	has_secure_password

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates   :imie,
				:presence => true

	validates   :nazwisko,
				:presence => true

	validates   :uzytkownik,
				:length => {:within => 4..25, :message => "nazwa użytkownika musi zawierać się pomiedzy 4 a 25 zanków"},
				:uniqueness => true

	validates :email,
			  :presence => true,
			  :length => {:maximum => 100},
			  :format => EMAIL_REGEX,
			  :confirmation => true

	scope :sortuj, lambda{order("nazwisko ASC, imie ASC")}
end
