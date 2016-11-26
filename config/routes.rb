Rails.application.routes.draw do
  	resources :projects
	resources :posts
	get 'welcome/index'
	root 'welcome#index'
end
