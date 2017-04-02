class SampleNameChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :list_name, :last_name
    end
end
