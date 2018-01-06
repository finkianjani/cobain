Rails.application.routes.draw do
  devise_for :users
  resources :submissions
  
  root 'submissions#index'
end
