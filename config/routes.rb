Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  root to: "pages#front"
  resources :videos do
    collection do
      post :search, to: "videos#search"
    end
  end
  resources :categories
  get 'register', to: "users#new"
  get 'sign_in', to: 'sessions#new'
  get 'home', to: 'videos#index'
  get 'sign_out', to: 'sessions#destroy'
  
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
