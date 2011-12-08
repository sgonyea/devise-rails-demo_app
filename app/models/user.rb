class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :recoverable,
         :rememberable, :lockable, :trackable, :token_authenticatable

  attr_accessible :email, :password, :password_confirmation
end
