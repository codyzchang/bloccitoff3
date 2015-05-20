Rails.application.routes.draw do
  resources :items

  # get 'welcome/index'
  # get 'welcome/items'
  
  root to: 'welcome#index'

end
