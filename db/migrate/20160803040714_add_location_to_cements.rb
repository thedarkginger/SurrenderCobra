class AddLocationToCements < ActiveRecord::Migration
  def change
    add_column :cements, :location, :string
  end
end
