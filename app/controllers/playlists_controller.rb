class PlaylistsController < ApplicationController
	# Save in var all the playlists, then use it in the View to show the info
	# @ ==> instance var access to Playlist MODEL and gets all of the lists
	def index
		@playlists = Playlist.all
	end

	# Save the playlists to show every one we want using the respective id
	def show
		@playlist = Playlist.find(params[:id])
	end

end
