class User < ApplicationRecord



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
	 :omniauthable, :omniauth_providers => [:facebook]


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                          format: { with: VALID_EMAIL_REGEX }

    #Canard Roles
    acts_as_user :roles => [:loggedin, :chieftain,  :admin ]

  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.username = auth.info.name
    user.nome = auth.info.first_name
    user.cognome = auth.info.last_name
    user.email = auth.info.email
    user.img_profile = 'guerriero.jpg'
    user.clan = nil
    user.password = Devise.friendly_token[0,20]
    user.save!
    # If you are using confirmable and the provider(s) you use validate emails,
    # uncomment the line below to skip the confirmation emails.
    #user.skip_confirmation!
  end
end


end
