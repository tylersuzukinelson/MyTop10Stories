class Followship < ActiveRecord::Base
  belongs_to :user
  belongs_to :follows
end
