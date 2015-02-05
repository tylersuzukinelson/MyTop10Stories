class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.references :user, index: true
      t.integer :week
      t.integer :pos1, index: true
      t.integer :pos2, index: true
      t.integer :pos3, index: true
      t.integer :pos4, index: true
      t.integer :pos5, index: true
      t.integer :pos6, index: true
      t.integer :pos7, index: true
      t.integer :pos8, index: true
      t.integer :pos9, index: true
      t.integer :pos10, index: true

      t.timestamps null: false
    end
    add_foreign_key :archives, :users
    add_foreign_key :archives, :articles,  column: :pos1
    add_foreign_key :archives, :articles,  column: :pos2
    add_foreign_key :archives, :articles,  column: :pos3
    add_foreign_key :archives, :articles,  column: :pos4
    add_foreign_key :archives, :articles,  column: :pos5
    add_foreign_key :archives, :articles,  column: :pos6
    add_foreign_key :archives, :articles,  column: :pos7
    add_foreign_key :archives, :articles,  column: :pos8
    add_foreign_key :archives, :articles,  column: :pos9
    add_foreign_key :archives, :articles,  column: :pos10
  end
end
