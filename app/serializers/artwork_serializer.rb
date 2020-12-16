class ArtworkSerializer < ActiveModel::Serializer
  

  attributes :id, :user_id, :primaryImage, :title, :artistDisplayName, :objectDate, :medium, :region, :kind


end
