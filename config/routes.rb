DBC::Application.routes.draw do

  resources :streams

    #SMC - This directs the user to a default web page
  root :to => "home#index"
  get "home/index"
  
  resources :radio_programs do
    get 'ankom', :on => :collection
  end

  resources :events do
    get 'events', :on => :collection
  end
  
  resources :events
  resources :requests do
    get 'acknowledge', :on => :collection
  end
  
  resources :customers

  resources :galleries do
    get 'list', :on => :collection
  end
  
  resources :announcements do
    get 'announcements', :on => :collection
  end
  
  resources :movies do
    get 'browser', :on => :collection
  end
  
  resources :assets
  
  # resources :resources do
  #   get 'resources', :on => :collection
  # end

  match "resources" => "pages#resources"
  
  resources :books do
    get 'books', :on => :collection
  end
 
  resources :stats

  get "pages/parable"

  get "pages/donate"

  get "pages/radio"

  get "pages/news"

  get "pages/contact"

  get "pages/about"

  get "pages/coaches"

  get "pages/events"

  get "pages/manerisms"

  get "pages/multimedia"

  get "pages/curriculum"
  match "weapons" => "pages#curriculum"

  get "pages/biblestudy"

  get "pages/bootcamp"
  
  get "pages/browserupdate"

  get "pages/sponsors"

  match "bootcamp" => "pages#bootcamp"
  #match "breakouts" => "pages#breakouts"
  match "dbc2015" => "pages#dbc2015"
  match "dbc2016" => "pages#dbc2016"
  match "DBC2016" => "pages#dbc2016"
  


  resources :quotes

  resources :movies
  
  match "browser" => "movies#browser"
  match "review/:id" => "prayer#review"
  match "theater/:id" => "movie#theater"
  match "bootcamp" => "pages#bootcamp"
  match "moty" => "pages#moty"

  resources :articles
  
  devise_for :users
  
  resources :users

  #SMC - This provides a route for users to login and create a new session. We have "users" and "admins"
  # this login goes to /users/login.html

  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end

 # this login goes to /admins/login.html  
  devise_scope :admin do
    get "/login" => "devise/sessions#new"
  end
  
  
  resources :prayers
  match 'prayers/:id/marquee' => 'prayers#marquee'
  match 'prayers/:id/featured' => 'prayers#featured'


  match ':controller(/:action(/:id(.:format)))'
  #map.connect 'static/:path', :controller => 'static', :action => 'show'

  match ':action' => 'static#:show'
end
