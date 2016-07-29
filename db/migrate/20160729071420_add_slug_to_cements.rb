class AddSlugToCements < ActiveRecord::Migration
  def change
    add_column :cements, :slug, :string
  end
end
