class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :styilings, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :styiling_comments, dependent: :destroy
  has_many :relationship
  has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy 
  has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following_user, through: :follower, source: :followed 
  has_many :follower_user, through: :followed, source: :follower
  attachment :image

  validates :name,:gender,:height,:email,presence: true
  validates :name, length: {minimum: 2}
  validates :name, length: {maximum: 20}
  validates :introduction, length: {maximum: 50}
  validates :height, length: {minimum: 3}
  validates :height, length: {maximum: 3}

   def follow(user_id)
    follower.create(followed_id: user_id)
  end


  def unfollow(user_id)
    follower.find_by(followed_id: user_id).destroy
  end


  def following?(user)
    following_user.include?(user)
  end
end
