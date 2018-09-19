# require 'pry'
# require 'rspotify'
class SpotifyController < ApplicationController
  def search
  	# binding.pry
  	# puts @results.inspect
  	# Extract parameter and save it
  	title = params[:title]
  	# validating the field 'title' isn't empty
  	if title
  		# puts @results.inspect
  		@results = RSpotify::Artist.search(title)
  	end
  end

  # private
  # def spotify_params
  # 	params.require(:spotify).permit(:name, :title, :search)
  # end
end
