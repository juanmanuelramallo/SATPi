Rails.application.routes.draw do
  namespace :admin do
    resources :addresses
    resources :nodes
    resources :packages
    resources :sensors

    root to: "nodes#index"
  end
  namespace :api do
    scope :v1 do
      # get "/nodes", to: "nodes#index"
      resources :nodes, only: :index
      resources :packages, only: [:index, :create]
    end
  end

  root to: "admin/nodes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
