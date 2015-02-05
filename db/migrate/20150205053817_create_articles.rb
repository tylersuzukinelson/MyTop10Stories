class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.text :sample

      t.timestamps null: false
    end
  end
end
