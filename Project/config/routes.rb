Rails.application.routes.draw do


  devise_for :users , :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root 'static_pages#home'
  get 'regolamento'    => 'static_pages#regolamento'
  get 'infoclan'    => 'static_pages#infoclan'
  get 'aboutapp'    => 'static_pages#aboutapp'
  get 'contatti'    => 'static_pages#contatti'
end
