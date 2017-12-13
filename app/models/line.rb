class Line < ApplicationRecord
	has_many :routes
	has_many :timetable
end
