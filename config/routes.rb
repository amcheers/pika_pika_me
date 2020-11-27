Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard'
  resources :pokemons do
    resources :bookings, only: [:create, :destroy], shallow: true do
      resources :reviews, only: [:new, :create, :destroy]
    end
    get '/reviews', to: 'reviews#index', as: 'pokemon_reviews'
  end
end
