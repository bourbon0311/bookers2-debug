Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/delete'
  root 'home#top'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books
  get 'home/about'
  get 'relationships/follower'
  get 'relationships/followed'
  resources :books, only: [:create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
    #resources :relationships, only: [:create, :destroy]
    post 'follow/:id' => 'relationships#follow', as: 'follow'
    post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'

end