Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/regolamento'
  get 'static_pages/infoclan'
  get 'static_pages/aboutapp'
  get 'static_pages/contatti'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
