Rails.application.routes.draw do
  devise_for :users
		resources :posts 
		
		root 'posts#index'

		get 'tags/:tag', to: 'posts#index', as: "tag"
	end
