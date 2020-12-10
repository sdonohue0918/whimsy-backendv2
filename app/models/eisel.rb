class Eisel < ApplicationRecord
    belongs_to :user, required: false
    has_one_attached :imagefile
    

    # def download_imagefile
    #     image = self.imagefile
    #     image_path = Rails.root.join('app','eisels', image.filename.to_s)
    #     File.open(image_path, 'wb') do |file|
    #         file.write(self.imagefile.download)
            
    #     end
        
    
    # end

    # def delete_imagefile
    #     image = self.imagefile
    #     image_path = Rails.root.join('app','eisels', image.filename.to_s)
    #     File.delete(image_path) if File.exist?(image_path)
    
    # end

    # def get_likes
    #     self.likes.count
    
    # end
        
end