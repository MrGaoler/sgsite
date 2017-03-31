class Users < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :images, as: :imageable
  has_many :posts
  validates :password, presence: true,
                       length: { in: 8..20 }, allow_nil: true,
                       format: { with: /\A[\w]|\d\Z/, message: 'is invalid' }
  validates_uniqueness_of :username
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/,
                              message: 'is invalid' }

  validates :username, allow_nil: false
  validates :email, allow_nil: false
end
