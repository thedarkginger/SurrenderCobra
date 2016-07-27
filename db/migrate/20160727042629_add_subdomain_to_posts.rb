class AddSubdomainToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :subdomain, :string
    add_column :posts, :headerimg, :string
  end
end
