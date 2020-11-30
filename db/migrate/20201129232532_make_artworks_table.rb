class MakeArtworksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
    t.integer :MET_ID
    t.string :title
    t.string :image_link
    t.string :artist_name
    t.string :date_made
    t.string :medium
    t.string :country_of_origin
    t.string :region
    t.string :type


    
    end
  end
end
