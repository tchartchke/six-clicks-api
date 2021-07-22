Rails.application.routes.draw do
  namespace :api do
    resources :playthrus, only: [:index, :new]
  end
end
