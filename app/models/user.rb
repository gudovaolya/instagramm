class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	
  	has_many :photos, dependent: :destroy
  	has_many :comments, dependent: :destroy
  	
  	has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  	has_many :followed_users, through: :relationships, source: :followed

  	has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  	has_many :followers, through: :reverse_relationships, source: :follower


  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates :name, presence: true, length: {maximum: 50}


 	has_attached_file :avatar, 
 					styles: { medium: "300x300>", thumb: "100x100>" }, 
 					default_url: "/images/:style/avatar.png"
 	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


	def following?(other_user)
    	relationships.find_by(followed_id: other_user.id)
  	end

  	def follow!(other_user)
    	relationships.create!(followed_id: other_user.id)
  	end

  	def unfollow!(other_user)
    	relationships.find_by(followed_id: other_user.id).destroy!
  	end

end
