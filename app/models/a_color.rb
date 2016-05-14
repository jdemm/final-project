require 'RMagick'
include Magick

class Color < ActiveRecord::Base
    
    belongs_to :user
    validates :user, presence: true
    
    
def make_color
        r.to_s(16)
        g.to_s(16)
        b.to_s(16)


    hex = r + g + b
    Image.new(100,100) { self.background_color = hex }
end    
    
end
