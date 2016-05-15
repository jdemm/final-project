require 'RMagick'
include Magick

class A_Color < ActiveRecord::Base
    
    belongs_to :user
    validates :user, presence: true
    
    
def make_a_color
        
       
        
        r.to_s(16)
        g.to_s(16)
        b.to_s(16)


   hex = "##{sprintf("%02X", r)}#{sprintf("%02X", g)}#{sprintf("%02X", b)}"
    Image.new(100,100) { self.background_color = hex }
end    
    
end
