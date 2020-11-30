class AddKeyToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :user_id, :integer
  end
end
