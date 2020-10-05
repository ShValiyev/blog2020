Rails.application.routes.draw do
  get 'sessions/new', as: :login
  resources :users
  resources :articles
  get 'say/hello'
  get 'say/goodbye'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'say#hello'
  post 'sessions/create', as: :create_session
  get 'sessions/destroy', as: :destroy_session
end
