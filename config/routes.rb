Rails.application.routes.draw do


	root 'session#new', as: 'index'

	post 'session/create', to: 'session#create', as: 'session_create'

	delete 'session/destroy', to: 'session#destroy', as: 'session_destroy'

	resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
