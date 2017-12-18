Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos
  resources :events do
    resources :registrations, only: [:create]
  end

  get "about" => "pages#about"
  get "contact" => "pages#contact"

  namespace :api do
    resources :events
  end

end
