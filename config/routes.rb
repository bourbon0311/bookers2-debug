Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/delete'
  root 'home#top'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books
  get 'home/about'
  resources :books, only: [:create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
end