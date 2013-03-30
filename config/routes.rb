Rainforest2::Application.routes.draw do
  
  resources :sessions, :only => [:new, :create, :destroy]
<<<<<<< HEAD
  
  resources :products do
    resources :reviews, :only => [:index, :new, :show, :create, :destroy]
  end
=======
 
  resources :products do
    resources :reviews, :only => [:index, :new, :show, :create]
  end
 
  resources :users, :only => [:new, :create]

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
>>>>>>> wtony

  resources :users, :only => [:new, :create]

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

  # resources :sessions, :only => [:new, :create, :destroy]
end
