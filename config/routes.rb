Rails.application.routes.draw do
  get 'welcome/index'
  get 'people/new'
  resources :people
  root 'welcome#index'
  
end
