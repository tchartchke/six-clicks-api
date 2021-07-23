Rails.application.routes.draw do
  namespace :api do
    resources :playthrus, only: [:index, :create, :show]
    # resources :playthrus
  end
end
