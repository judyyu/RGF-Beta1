RealGoodFood::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  
  resources :posts
  resources :pages
  resources :static_pages 
  #match "/static_pages/*id" => 'static_pages#show', :as => :page, :format => false
 
  #static pages
  match '/new_to_this', :to=>'pages#new_to_this'
  match '/how_it_works', :to=>'pages#how_it_works'
  match '/team', :to=>'pages#team'  
  match '/privacy_policy', :to=>'pages#privacy_policy'
  match '/terms_and_conditions', :to=>'pages#terms_and_conditions'

  get "friends/index"
  get 'accept_user_to_events' => "user_to_events#accept", :as => 'accept_user_to_event'
  get 'reject_user_to_events' => "user_to_events#reject", :as => 'reject_user_to_event'
 
  resources :events do
     member do
       #post :rate
       get  :join
       #get  :tag_cloud
     end
  end
  
  resources :blogs
  resources :locations
  resources :profiles
  get "comments/show"
  resources :dashboards
  resources :groups
  resources :comments
  resources :listings
  #get 'home/index' 
  #resources :friendships
  get 'friend_ship' => "friendships#create", :as => "friend_ship"
  get 'user_to_groups' => "user_to_groups#create", :as => "user_to_groups"
  get 'user_to_events' => "user_to_events#create", :as => "user_to_events"

  devise_for :users, :controllers => { :registrations => "registrations" } do
    get '/users/sign_out' => 'devise/sessions#destroy'
    resources :friends
  end

  root :to => 'home#welcome'
  #root :to => 'dashboards#index'



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
  # root :to => 'dashboards#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
