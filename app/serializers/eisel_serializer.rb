class EiselSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  
  attributes :id, :name, :genre, :user_id, :imagefile
  
  belongs_to :user
  
  
  
  def imagefile
    object.imagefile.service_url if object.imagefile.attached?
  end
end
