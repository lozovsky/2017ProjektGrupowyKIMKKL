class Line < ApplicationRecord
	has_many :routes
	has_many :timetables
end
