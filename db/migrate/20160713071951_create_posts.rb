class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :category
      t.string :title
      t.datetime :published_at
      t.integer :user_id
      t.string :author
      t.string :slug
      t.string :payload

      t.timestamps null: false
    end
  end
end
