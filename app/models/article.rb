class Article < ActiveRecord::Base
  has_many :rankings, dependent: :destroy
  has_many :users, through: :rankings
  has_many :archives, dependent: :nullify
  has_many :archived_users, through: :archives, source: :user
end
