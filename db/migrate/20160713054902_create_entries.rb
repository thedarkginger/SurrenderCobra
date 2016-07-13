class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.section :string
      t.title :string
      t.slug :string
      t.payload :string
      t.user_id :integer
      t.author_name :string
      t.published_at :datetime

      t.timestamps null: false
    end
  end
end
