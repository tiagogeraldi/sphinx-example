Rails.application.routes.draw do
  get 'stats/index'

  get 'articles/index'

  root 'articles#index'
  
  resources :articles, only: [:index, :create]
  resources :stats,    only: :index do
    get :destroy_all, on: :collection
  end
end
