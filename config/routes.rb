Rails.application.routes.draw do
  resources :users, only: [:new,:create]
  root "chats#index"
  resources :chats do
    collection do
      post :confirm
    end
 end
end
