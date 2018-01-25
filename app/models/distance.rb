class Distance < ApplicationRecord
  belongs_to :from_stop, :class_name => 'Stop', :foreign_key => 'from_stop_id'
  belongs_to :to_stop, :class_name => 'Stop', :foreign_key => 'to_stop_id'
  has_many :routes

  scope :orderby, lambda{order("id ASC")}


  validates :travel_time,
			   :numericality => {in: true, message: ": Pole musi być numerem."},
			   presence: 	{in: true, message: ": Pole nie moze byc puste."}

end
