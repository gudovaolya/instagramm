class Photo < ApplicationRecord

	acts_as_votable
	paginates_per 2

	belongs_to :user
	has_many :comments, dependent: :destroy

	has_attached_file :image,                    
                    styles: {large: '600x600>', medium: '200x200>', thumb: '60x60>'} 
                    # default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :image, presence: true
	
end
