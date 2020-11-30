class ChangeNameInArtworks < ActiveRecord::Migration[6.0]
  def change
    rename_column :artworks, :artist_name, :artistDisplayName
  end
end
