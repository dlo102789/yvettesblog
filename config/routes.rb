Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
	root to: 'pages#home'
	resources :pages
	get 'about', to: 'pages#about'
	resources :contacts, only: :create
	get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
