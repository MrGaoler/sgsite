class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :users
  has_many :images
end
