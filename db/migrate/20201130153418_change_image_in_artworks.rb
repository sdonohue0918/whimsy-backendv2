class ChangeImageInArtworks < ActiveRecord::Migration[6.0]
  def change
    rename_column :artworks, :image_link, :primaryImage
  end
end
