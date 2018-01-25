class Timetable < ApplicationRecord
	belongs_to :line

	validates :departure_time,
			   uniqueness: 	{in: true, scope: :line_id, message: ": W bazie danych istnieje już przystanek o takim czasie odjazdu."}

end
