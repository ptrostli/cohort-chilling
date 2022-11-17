Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/events', to: "static_pages#index"
  get '/events/:id', to: "static_pages#index"
  get '/users/:id', to: "static_pages#index"

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show]
    end
    resources :users, only: [:show]
  end
end
end
