Rails.application.routes.draw do
  get '/secrets/show' => 'secrets#show'
  resources :sessions, only: [:new, :create]
  post 'sessions/destroy' => 'sessions#destroy'
end
