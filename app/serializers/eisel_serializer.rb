class EiselSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  
  attributes :id, :name, :genre, :user_id, :likes, :imagefile
  
  belongs_to :user
  has_many :likes
  
  
  def imagefile
    object.imagefile.service_url if object.imagefile.attached?
  end
end
