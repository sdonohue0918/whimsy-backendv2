class ChangeKeysInArtwork < ActiveRecord::Migration[6.0]
  def change
    rename_column :artworks, :image_link, :primaryImage
  end

  def change
    rename_column :artworks, :artist_name, :artistDisplayName
  end

  def change
    rename_column :artworks, :date_made, :objectDate
  end

  def change
    rename_column :artworks, :MET_ID, :objectID
  end
end

# t.integer "MET_ID"
#     t.string "title"
#     t.string "image_link"
#     t.string "artist_name"
#     t.string "date_made"
#     t.string "medium"
#     t.string "country_of_origin"
#     t.string "region"
#     t.string "kind"
#     t.integer "user_id"


# <img className='artworkCardImage' src={props.details.primaryImage} alt='not available'></img>
#             <h6>{props.details.title}</h6>
#             <h6>{props.details.artistDisplayName}</h6>
#             <h6>{props.details.objectDate}</h6>
#             {/* <NavLink to={`/museum/${props.details.objectID}`}></NavLink> */}
