class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :ranking
end
