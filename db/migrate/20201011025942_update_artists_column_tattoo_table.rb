class UpdateArtistsColumnTattooTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :tattoos, :artist_name
    add_column :tattoos, :artist_id, :integer
  end
end
