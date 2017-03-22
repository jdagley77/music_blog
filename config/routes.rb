Rails.application.routes.draw do
		resources :posts 
		root 'posts#index'
		get 'tags/:tag', to: 'posts#index', as: "tag"
	end
