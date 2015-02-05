class CreateFollowships < ActiveRecord::Migration
  def change
    create_table :followships do |t|
      t.references :user, index: true
      t.integer :follows, index: true

      t.timestamps null: false
    end
    add_foreign_key :followships, :users
    add_foreign_key :followships, :users, column: :follows
  end
end
