class Followship < ActiveRecord::Base
  belongs_to :user
  belongs_to :follows, class_name: "User"
end
