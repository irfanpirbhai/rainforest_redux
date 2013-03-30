class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :password, :password_confirmation

  validates :name, :email, :password, :password_confirmation, :presence => true

  has_many :reviews

  has_secure_password

end
