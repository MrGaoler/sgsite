class SampleNameChangeColumnType < ActiveRecord::Migration
  def up
    change_column :posts, :published_at, :date
   end

  def down
    change_column :posts, :published_at, :text
  end
end
