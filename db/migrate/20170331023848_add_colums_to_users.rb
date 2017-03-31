class AddColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :list_name, :string
    add_column :users, :username, :string
    add_column :users, :password, :varchar8
    add_column :users, :email, :string
    add_column :users, :birthday, :date
  end
end
