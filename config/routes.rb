Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:show,:create]
  root "chats#index"
  resources :chats do
    collection do
      post :confirm
    end
 end
end
