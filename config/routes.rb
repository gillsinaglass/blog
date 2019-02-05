Rails.application.routes.draw do
  resources :posts
  resources :users, only: %i(show edit new update create destroy)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
