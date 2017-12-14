class Route < ApplicationRecord
	belongs_to :line
	belongs_to :distance
end
