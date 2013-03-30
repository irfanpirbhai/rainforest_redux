Rainforest2::Application.routes.draw do
  
  resources :sessions, :only => [:new, :create, :destroy]
  
  resources :products do
    resources :reviews, :only => [:index, :new, :show, :create, :destroy]
  end
  
  resources :users, :only => [:new, :create]

end
