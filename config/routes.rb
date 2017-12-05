Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locations
  resources :reviews
  resources :schedules
  resources :trucks
  resources :users, only:[:show, :edit, :create]
  get '/signup', to: 'users#new', as: 'signup'
end
