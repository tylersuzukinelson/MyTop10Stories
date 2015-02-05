class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :user, index: true
      t.references :article, index: true
      t.integer :rank
      t.integer :week

      t.timestamps null: false
    end
    add_foreign_key :rankings, :users
    add_foreign_key :rankings, :articles
  end
end
