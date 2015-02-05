class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :archives, dependent: :destroy
  has_many :archived_articles, through: :archives, source: :article
  has_many :rankings, dependent: :destroy
  has_many :articles, through: :rankings
  has_many :likes, dependent: :destroy
  has_many :liked_rankings, through: :likes, source: :ranking
  has_many :followships, dependent: :destroy
  has_many :is_following, through: :followships, source: :user
  has_many :inverse_followships, class_name: "Followship", foreign_key: "follows"
  has_many :followers, through: :inverse_followships, source: :user

  #mount_uploader :image, ImageUploader
end
