class Track < ApplicationRecord
	# Empty 'track' fields are not allowed
	validates_presence_of :title, :artist, :album
end
