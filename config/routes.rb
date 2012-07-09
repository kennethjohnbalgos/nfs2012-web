Nfs2012Web::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  match "foodshowdown2012abscbn" => "dashboard#showdown"

  match "dashboard" => "dashboard#showdown"
  match "dashboard/showdown" => "dashboard#showdown"
  get "shared/navigation"

  resources :content_archives
  resources :content_announcements
  resources :content_abouts
  resources :content_competitions
  resources :content_partners
  resources :content_sponsors
  resources :content_schedules
  
  match "home" => "home#index"
  match "about(/:action/:id)" => "about#index"
  match "competitions(/:action/:id)" => "competitions#index"
  match "announcements(/:action/:id)" => "announcements#index"
  match "archives(/:action/:id)" => "archives#index"
  match "contact_us(/:action/:id)" => "contact_us#index"
  match "partners(/:action/:id)" => "partners#index"
  match "sponsors(/:action/:id)" => "sponsors#index"
  match "schedules(/:action/:id)" => "schedules#index"
  match "gallery(/:action)" => "gallery#index"

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
