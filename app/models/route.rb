class Route < ApplicationRecord
	belongs_to :line
	belongs_to :distance

validates :stop_number,
			   :numericality => {in: true, greater_than: 0, message: ": Pole musi być numerem większym od 0."},
			   presence: 	{in: true, message: ": Pole nie moze byc puste."},
			   uniqueness: 	{in: true, scope: :line_id , message: ": W bazie danych istnieje już przystanek o tym numerze kolejności."}

end
