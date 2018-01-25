class Line < ApplicationRecord
	has_many :routes
	has_many :timetables

	#NAME_REGEX = /^[0-9]$/;

	validates :name,
			   presence: 		{in: true, message: ": Pole nie moze byc puste."},
			   length: 			{within: 1..2, message: ": Nazwa linii tramwajowej musi składać się z maksymalnie dwóch cyfr."},
			   numericality: 	{in: true, message: ": Pole musi być numerem."},
			   uniqueness: 		{in: true, message: ": W bazie danych istnieje już linia o takiej nazwie."}




	scope :orderby, lambda{order("name ASC")}

end
