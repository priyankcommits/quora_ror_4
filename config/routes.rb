Rails.application.routes.draw do
  root to: "sessions#new"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  #get 'signout', to: 'sessions#destroy', as: 'signout'
  #get 'main', to: 'home#main', as: 'main'
  get 'question/:id', to: 'home#view_question', as: 'view_question'
  get '/topic/:id', to: 'home#view_topic', as: 'view_topic'
  get '/profile/:id', to: 'profile#view_profile', as: 'view_profile'

  resources :sessions, only: [:new, :create, :destroy]

  resource :home, only: [:show] do
    collection do
      get 'main'
    end
  end

  #resources :topics

end
