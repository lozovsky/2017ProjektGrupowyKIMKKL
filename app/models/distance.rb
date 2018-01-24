class Distance < ApplicationRecord
  belongs_to :from_stop, :class_name => 'Stop', :foreign_key => 'from_stop_id'
  belongs_to :to_stop, :class_name => 'Stop', :foreign_key => 'to_stop_id'
  has_many :routes

  scope :orderby, lambda{order("id ASC")}
end
