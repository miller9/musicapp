class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
    	t.string :name
    	t.integer :number_of_votes
    end
  end
end
