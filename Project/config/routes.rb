Rails.application.routes.draw do


  get 'classifica_c/table'
  get 'classifica/table'
  devise_for :users , controllers: {registrations: 'users/registrations'}, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

    #da capire se da errore
    resources :users, only: [:show, :edit, :update]

  resources :profile

  as :user do
    get 'profile', :to => 'profile#index', :as => :user_root # Rails 3
  end

  root 'static_pages#home'
  get 'regolamento'    => 'static_pages#regolamento'
  get 'infoclan'    => 'static_pages#infoclan'
  get 'aboutapp'    => 'static_pages#aboutapp'
  get 'contatti'    => 'static_pages#contatti'
  get 'classifica' => 'classifica#table'
  get 'classifica_c' => 'classifica_c#table'
end
