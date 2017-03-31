class AddColumsToImage < ActiveRecord::Migration
  def change
    add_column :images, :url, :url
  end
end
