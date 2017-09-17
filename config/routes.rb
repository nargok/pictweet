Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  get  'users/:id' => 'users#show'
  post 'tweets' => 'tweets#create'
end
