class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation,
      :remember_me, :full_name

  validates_presence_of :full_name
  has_many :posts, :foreign_key => "author_id"

  def first_name
    self.full_name.split.first
  end

  def last_name
    self.full_name.split.last
  end

end
