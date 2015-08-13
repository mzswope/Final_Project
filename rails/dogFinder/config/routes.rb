Rails.application.routes.draw do
  
  root "sites#home"

  

  resources :admin_users, only: [:index, :new, :create, :edit, :update, :show, :destroy]

    resources :shelters, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :dogs, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    end
    #     resources :access, only: [:index, :login]

  # get 'admin_users/show', :to => "shelters#new"

  # # resources :
  # get 'access/index', :to => "access#index"
  # get 'access/login', :to => "access#login"
  # get 'access/login', :to => "access#attempt_login"
  # get 'access/attempt_login', :to => "access#index"

  
  get "sites/what_to_expect", :to => "sites#expect"
  # get "/filter" => "sites#filter"


  # default route
  match ':controller(/:action(/:id))', :via => [:get, :post]

  match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
