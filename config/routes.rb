Rails.application.routes.draw do
  get 'nodes/index'

  namespace :admin do
    resources :addresses
    resources :nodes
    resources :packages, except: [:new, :edit]
    resources :sensors

    root to: "nodes#index"
  end
  namespace :api do
    scope :v1 do
      resources :nodes, only: :index
      resources :packages, only: [:index, :create]
      post '/batch_create_packages', to: 'packages#batch_create'
    end
  end

  namespace :external_api do
    scope :v1 do
      get '/get_data', to: 'packages#get_data'
    end
  end

  root to: "nodes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
