Rails.application.routes.draw do
  resources :pages
  root to: "books#index"
  resources :books, only: %i[index show] do
    collection do
      get "search"
    end
  end
  resources :publishers, only: %i[index show]
  resources :genres, only: %i[index show]
  resources :authors, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
