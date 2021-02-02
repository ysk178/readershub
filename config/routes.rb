Rails.application.routes.draw do
  get 'books/index'
  root to:  'books#index'
  resources :books, only: :index
end
