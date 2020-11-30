class RedoTypeForArtworks < ActiveRecord::Migration[6.0]
  def change
    rename_column :artworks, :type, :kind
  end
end
