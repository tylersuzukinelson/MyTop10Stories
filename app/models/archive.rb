class Archive < ActiveRecord::Base
  belongs_to :user
  belongs_to :pos1, class_name: "Article"
  belongs_to :pos2, class_name: "Article"
  belongs_to :pos3, class_name: "Article"
  belongs_to :pos4, class_name: "Article"
  belongs_to :pos5, class_name: "Article"
  belongs_to :pos6, class_name: "Article"
  belongs_to :pos7, class_name: "Article"
  belongs_to :pos8, class_name: "Article"
  belongs_to :pos9, class_name: "Article"
  belongs_to :pos10, class_name: "Article"
end
