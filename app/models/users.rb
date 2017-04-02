class Users < ActiveRecord::Base
  attr_accessible :email, :password,:first_name, :last_name, :username, :email, :birthday
  has_many :images, as: => imageable:
  has_many :posts
  validates :email, :uniqueness => true, :presence => true
 validates :username, :uniqueness => true, :presence => true
 validates :password, :lenght => { :minimum => 8 }, :presence => true
  scope :user, -> { where('birthday >= ?', Date.today - 18.years) }
  def full_name
      "#{first_name} #{last_name}"
    end
end
