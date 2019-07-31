class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
	 :omniauthable, :omniauth_providers => [:facebook]



    #Canard Roles
    acts_as_user :roles => [:user, :chieftain,  :admin ]

  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.nome = auth.info.first_name
    user.cognome = auth.info.last_name
    user.email = auth.info.email
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end
end

  
end
