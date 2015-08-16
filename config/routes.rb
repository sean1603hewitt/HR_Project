Rails.application.routes.draw do

  devise_for :users
  
  root :to =>'home#index'
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'
  resources :searches
  resources :holidays
  resources :profiles
  resources :resumes

  resources :answers
  resources :questions


  resources :jobs
  
  get '/profiles' => 'profiles#index'

  scope :jobs do
  get '/jobs' => 'jobs#index'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id/edit' => 'jobs#edit'
  get '/jobs/:id' => 'jobs#destroy'
  
  end



  
  scope :devise do
  get 'users/sign_in' => 'devise/sessions#create'
  get 'users/sign_in' => 'devise/sessions#new'
  get 'users' => 'devise/registrations#create'
  get 'users/sign_up' => 'devise/registrations#new'
  end
	


  
  get '/questions' => 'questions#index'
  
  scope :resume do
  get '/resumes' => 'resumes#index'
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
