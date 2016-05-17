require 'RMagick'
include Magick

class AColor < ActiveRecord::Base
    
    belongs_to :user
    validates :user, presence: true
    
    
def make_a_color
        
       
        
        r.to_s(16)
        g.to_s(16)
        b.to_s(16)


   hex = "##{sprintf("%02X", r)}#{sprintf("%02X", g)}#{sprintf("%02X", b)}"
   image =  Image.new(100,100) { self.background_color = hex }
   image.write(self.get_file_path)
   
end  


def display_image
    image.display
end


def get_file_path
    
    
   # a_file = "#{Rails.public_path}/public/images/color_#{id}_img.png"
    
   # a_file = Rails.public_path.join('public', 'images', "color_#{id}_img.png").to_s
    
     a_file = "#{Rails.root}/public/images/color_#{id}_img.png"
    return a_file
    
end

def get_public_path
  return "/images/color_#{id}_img.png"
end
    
end
