# require 'pry'
# require 'rspotify'
class SpotifyController < ApplicationController
  def search

  	# Extract parameter and save it
  	title = params[:title]
  	# validating the field 'title' isn't empty
  	if title
  		@results = RSpotify::Artist.search(title)
      @songs = RSpotify::Track.search(title)

      #@artist = search.first
  	end
  end

  # def search2
  #   title = params[:title]
  #   if title
  #     @songs = RSpotify::Track.search(title)
  #   end
  # end

  # private
  # def spotify_params
  # 	params.require(:spotify).permit(:name, :title, :search)
  # end
end
