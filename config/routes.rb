Myflix::Application.routes.draw do

  get '/home', to: 'videos#index'

  get '/video/:id', to: 'videos#show', as: 'video'

  get 'ui(/:action)', controller: 'ui'

end
