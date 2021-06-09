Rails.application.routes.draw do
  devise_for :users
  get 'chat/index'
  get 'posts/new', to: 'calendars#new'
  post 'posts', to: 'calendars#create'
  root to: "calendars#index"
  resources :calendars
  resources :rooms, only: [:new, :create]
end
