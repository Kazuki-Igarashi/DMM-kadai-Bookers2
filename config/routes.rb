Rails.application.routes.draw do
  # get 'users/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'books/edit'
  # get 'books/index'
  # get 'books/show'
  devise_for :users
  get 'homes/top'
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  resources :users, only: [:edit, :index, :show, :update]
  resources :books, only: [:new, :edit, :index, :show, :create, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
