AdviseApp::Application.routes.draw do

  root :to => 'welcome#index'

  resources :proteges

  resources :advisers

  resources :users, except: [:new]

  resources :sessions, only: [:new, :create]

  resources :relationships, only: [:index]

  get '/logout' => 'sessions#destroy'

  get '/sign_up', to: 'welcome#new', as: 'sign_up'

  get '/login', to: 'sessions#new', as: 'login'

  put '/users/:id', to: 'users#update', as: 'update'

  get '/users/:id/select', to: 'users#select', as: 'select'

end
