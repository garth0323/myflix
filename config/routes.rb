Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  resources :videos do
    collection do
      post :search, to: "videos#search"
    end
  end
  resources :categories
end
