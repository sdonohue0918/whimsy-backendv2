class ChangeDateInArtworks < ActiveRecord::Migration[6.0]
  def change
    rename_column :artworks, :date_made, :objectDate
  end
end
