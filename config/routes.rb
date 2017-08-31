Rails.application.routes.draw do
  namespace :admin do
    resources :addresses
    resources :nodes
    resources :packages
    resources :sensors

    root to: "addresses#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
