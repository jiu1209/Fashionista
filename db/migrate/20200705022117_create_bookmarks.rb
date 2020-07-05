class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :styiling, foreign_key: true

      t.timestamps
      t.index [:user_id, :styiling_id], unique: true
    end
  end
end
