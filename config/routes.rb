Rails.application.routes.draw do
  namespace :api do
    resources :playthrus, only: [:index, :new, :show]
  end
end
