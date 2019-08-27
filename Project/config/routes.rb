Rails.application.routes.draw do


  get 'google_calendar/show'
  get 'infoc_admin/infoclan_admin'
  get 'classifica_c_admin/table_admin'
  get 'infoc/infoclan'
  get 'classifica_c/table'
  get 'classifica/table'
  devise_for :users , controllers: {registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'}, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register"}

    resources :admin, only: [:show]
    #da capire se da errore
    resources :users, only: [:show, :edit, :update]

    resources :clan

    resources :editstatus

    resources :profile

  post 'cambia_immagine' => 'profile#cambia_immagine'
  post 'nomina_capoclan' => 'profile#nomina_capoclan'
  post 'banna_utente' => 'profile#banna_utente'
  post 'togli_ban' => 'profile#togli_ban'

   match 'profile/:id' => 'profile#destroy', :via => :delete, :as => :admin_destroy_user

  root 'static_pages#home'
  get 'regolamento'    => 'static_pages#regolamento'
  get 'infoclan'    => 'static_pages#infoclan'
  get 'infoc' => 'infoc#infoclan'
  get 'aboutapp'    => 'static_pages#aboutapp'
  get 'contatti'    => 'static_pages#contatti'
  get 'classifica' => 'classifica#table'
  get 'classifica_c' => 'classifica_c#table'
  get 'classifica_c_admin' => 'classifica_c_admin#table_admin'
  get 'infoc_admin' => 'infoc_admin#infoclan_admin'
  get 'combatti' => 'combatti#precomb'
  get 'combatti2' => 'combatti#postcomb'
  get 'scegliclan' => 'scegli#select'
  get 'risultato' => 'combatti#results'
  get 'google_calendar' => 'google_calendar#show'

  get '/google_calendar/calendar/redirect', to: 'google_calendar#redirect', as: 'redirect'
  get '/google_calendar/calendar/callback', to: 'google_calendar#callback', as: 'callback'
  get '/google_calendar/calendar/calendars', to: 'google_calendar#calendars', as: 'calendars'
  get '/google_calendar/calendar/events/:calendar_id', to: 'google_calendar#events', as: 'events', calendar_id: /[^\/]+/
end
