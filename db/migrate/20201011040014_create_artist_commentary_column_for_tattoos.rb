class CreateArtistCommentaryColumnForTattoos < ActiveRecord::Migration[5.2]
  def change
    add_column :tattoos, :artist_commentary, :text
  end
end
