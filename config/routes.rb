Rails.application.routes.draw do
  get 'buy_books/new'
  post 'buy_books/create'
  get 'buy_books/index'
  get 'books/new'
  post 'books/new' => 'books#create'
  get 'books/index'
  get '/drop' => 'books#drop'
  root 'users#index'
  resources :users do
  	collection do
  		get :drop
  		get :dropy
  	end
  end
end
