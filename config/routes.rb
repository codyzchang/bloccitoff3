Rails.application.routes.draw do
  devise_for :users
  resources :items

  # get 'welcome/index'
  # get 'welcome/items'
  
  root to: 'welcome#index'

end
