class AddFavouriteToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :favourite, :boolean, default: false
  end
end
