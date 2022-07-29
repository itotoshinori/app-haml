Rails.application.routes.draw do
  resources :tweets
  resources :articles , only: [:index,:new,:create]
  resources :users, only: [:index,:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
