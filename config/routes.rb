Rails.application.routes.draw do
	devise_for :users
	resources :projects
	resources :posts
	resources :contacts, only: [:new, :create]
	get 'welcome/index'
	root 'welcome#index'

	# trick to avoid routing error when people do : /whatever_not_allowed by routes
	# get '*path' => redirect('/')
end