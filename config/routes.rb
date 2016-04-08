Rails.application.routes.draw do
  get 'stats/index'

  get 'articles/index'

  root 'articles#index'
  
  resources :articles, only: [:index, :create]
  resources :stats,    only: :index
end
