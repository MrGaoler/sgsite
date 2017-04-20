class Post < ActiveRecord::Base
  attr_accessible :title, :body, :published_at
  belongs_to :user
  has_many :images, as: :imageable

  scope :published_all, -> { where('published_at IS NOT NULL') }
end
