Rails.application.routes.draw do
  #resources :lists
  devise_for :users
  #get 'home/index'
  devise_for :models
  get 'welcome/index'
  get 'people/new'
  resources :people
  root 'welcome#index'
  
  root to: "home#index", as: :authenticated_root
end
