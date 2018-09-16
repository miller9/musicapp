class Playlist < ActiveRecord::Base
	# Empty fields are not allowed
	validates_presence_of :name, :number_of_votes
end
