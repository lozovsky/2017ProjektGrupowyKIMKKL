class Stop < ApplicationRecord
	has_many :distances

	validates :name,
			   presence: 	{in: true, message: ": Pole nie moze byc puste."},
			   length: 		{within: 4..25, message: ": Nazwa przystanku musi zawierać się pomiędzy 4 do 25 znaków"},
			   uniqueness: 	{in: true, message: ": W bazie danych istnieje już przystanek o takiej nazwie."}

	scope :orderby, lambda{order("name ASC")}
end
