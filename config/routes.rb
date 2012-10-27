DBC::Application.routes.draw do
  
  resources :tests

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

  #SMC - This directs the user to a default web page
  root :to => "home#index"
  get "home/index"
  
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

 
 
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
  #map.connect 'static/:path', :controller => 'static', :action => 'show'

  match ':action' => 'static#:show'
 
end
