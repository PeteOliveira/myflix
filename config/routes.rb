Myflix::Application.routes.draw do

  root to: 'pages#front'
  get '/register', to: 'users#new'
  get '/sign_in', to: 'sessions#new'
  get '/home', to: 'videos#index'

  get '/video/:id', to: 'videos#show', as: 'video'

  resources :videos, only: [:show] do
    collection do
      post :search, to: "videos#search"
    end
  end

  get 'ui(/:action)', controller: 'ui'

  resources  :categories

  resources :users, only: [:create]

end
