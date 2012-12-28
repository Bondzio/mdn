DBC::Application.routes.draw do
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
  resources :requests

  resources :customers

  resources :galleries do
    get 'list', :on => :collection
  end
  
  resources :movies do
    get 'browser', :on => :collection
  end
  
  resources :assets
  

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

  get "pages/biblestudy"

  get "pages/bootcamp"
  
  get "pages/browserupdate"

  resources :quotes

  resources :movies
  
  match "browser" => "movies#browser"
  match "review/:id" => "prayer#review"
  match "theater/:id" => "movie#theater"

  resources :articles
  
  devise_for :admins

  devise_for :users

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
