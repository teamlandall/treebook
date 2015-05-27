class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :first_name, presence: true

 validates :last_name, presence: true

 validates :profile_name, presence: true,
 						  						uniqueness: true, 
 						  						format: {
 						  							with: /\A[a-zA-Z0-9_-]+\z/,
 						  							message: 'Must be formatted correctly.'
 						  						}

 has_many :statuses

 def full_name
 	first_name + " " + last_name
 end

 # Creates method to call gravatar for users who have a gravatar account. 
 # Commenting out because my fake users don't have gravatar accounts it
 # throws and error when the program tries to find them.
 # def gravatar_url
 #	stripped_email = email.stripped_email
 #	downcased_email = stripped_email.downcased_email
 #	hash = Digest::MD5.hexdigest(downcased_email)
 #
 #	"http://gravatar.com/avatar/#{hash}"
 # end
end
