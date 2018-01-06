Rails.application.routes.draw do
  devise_for :users
  resources :submissions do
  	member do
  		put "like", to: "submisssions#upvote"
  		put "dislike", to: "submisssions#downvote"
  	end

  end


  
  root 'submissions#index'
end
