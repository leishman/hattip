class User < ActiveRecord::Base
	has_one 	:location
	has_one 	:profile
	has_many 	:posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
