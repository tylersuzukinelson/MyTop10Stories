class Ranking < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
end
