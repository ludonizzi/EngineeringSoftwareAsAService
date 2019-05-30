Rails.application.routes.draw do
<<<<<<< HEAD
  get 'home/index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

#Login User path
authenticated :user do
    root 'home#index', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end


=======
>>>>>>> parent of c19ed58... Aggiunta file devise
  get 'static_pages/home'
  get 'static_pages/regolamento'
  get 'static_pages/infoclan'
  get 'static_pages/aboutapp'
  get 'static_pages/contatti'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
