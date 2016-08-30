Rails.application.routes.draw do
  root to: "sessions#new"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'upvote/:id', to: 'homes#upvote', as: 'upvote'
  get 'follow_user/:id', to: 'homes#follow_user', as:'follow_user'
  get 'follow_topic/:id', to: 'homes#follow_topic', as:'follow_topic'
  resources :sessions, only: [:new, :create, :destroy]

  resource :home, only: [:show]

  resources :topics, only: [:show]

  resources :questions, only: [:show, :new, :create] do
    resources :seeks, only: [:new, :create]
    resources :answers, only: [:new, :create] do
      resources :comments, only: [:new, :create]
    end
  end

  resources :profiles, only: [:show, :edit, :update]
end
