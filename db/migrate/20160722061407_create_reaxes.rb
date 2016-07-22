class CreateReaxes < ActiveRecord::Migration
  def change
    create_table :reaxes do |t|
      t.integer :user
      t.string :username
      t.string :post
      t.datetime :submission
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end
