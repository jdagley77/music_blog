Rails.application.routes.draw do
		resources :posts 
		get 'tags/:tag', to: 'posts#index', as: "tag"
	end
