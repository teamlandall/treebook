class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Jason adds this in, but my web app worked without it. Different versions? 
  #attr_accessible :email, :password, :password_confirmation, :remeber_me,
  #								:first_name, :last_name, :profile_name

end
