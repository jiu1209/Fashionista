class Styiling < ApplicationRecord
	 belongs_to :user
	 attachment :styling_image
	 has_many :styiling_comments, dependent: :destroy
	 has_many :favorites, dependent: :destroy
	 def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
     end
end
