Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locations
  resources :reviews
  resources :schedules
  resources :trucks
  resources :users, only:[:show, :edit, :create, :update, :destroy]
  resources :favorites, only:[:create, :destroy]
  get '/signup', to: 'users#new', as: 'signup'
  get "/signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy", as: "signout"

end
