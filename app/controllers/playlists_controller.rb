class PlaylistsController < ApplicationController
	def index
		# Save in var all the playlists, then use it in the View to show the info
		# @ ==> instance var access to Playlist MODEL and gets all of the lists
		@playlists = Playlist.all
	end
end
