class Image < ActiveRecord::Base
  attr_accessible :url
  belongs_to  :users :imageable, polymorphic: true
  belongs_to  :posts
end
