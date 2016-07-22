class CreateCements < ActiveRecord::Migration
  def change
    create_table :cements do |t|
      t.string :username
      t.integer :user
      t.string :post
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end
