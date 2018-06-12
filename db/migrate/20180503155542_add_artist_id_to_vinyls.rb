class AddArtistIdToVinyls < ActiveRecord::Migration[5.1]
  def change
    add_column :vinyls, :artist_id, :integer
  end
end
