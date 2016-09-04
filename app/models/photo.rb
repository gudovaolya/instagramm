class Photo < ApplicationRecord

	belongs_to :user
	has_many :comments

	has_attached_file :image,                    
                    styles: {large: '600x600>', medium: '200x200>', thumb: '60x60>'} 
                    # default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :image, presence: true
	
end
