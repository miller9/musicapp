class PlaylistsController < ApplicationController
	before_action :authenticate_user!
	# Save in var all the playlists, then use it in the View to show the info
	# @ ==> instance var access to Playlist MODEL and gets all of the lists
	def index
		@playlists = Playlist.all
	end

	# Save the playlists to show every one we want using the respective id
	def show
		@playlist = Playlist.find(params[:id])
	end

	# New give us a form to create a new element
	def new
		@playlist = Playlist.new
	end

	# Create the element in DataBase
	# Passed params are already filtered
	def create
		@playlist = Playlist.new(playlist_params)
		if @playlist.save
			redirect_to @playlist
		else
			render :new
		end
	end

	private	
	# White list with Accepted Params=name, number_of_votes
	def playlist_params
		params.require(:playlist).permit(:name, :number_of_votes)
	end
end
