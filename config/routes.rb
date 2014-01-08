Myflix::Application.routes.draw do

  get '/home', to: 'videos#index'

  get '/video/:id', to: 'videos#show', as: 'video'

  get 'ui(/:action)', controller: 'ui'

  #get '/category/:id', to: 'categories#show', as: 'category'

  resources  :categories

end
