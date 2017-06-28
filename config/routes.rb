Rails.application.routes.draw {
	mount Ckeditor::Engine => '/ckeditor'
	devise_for :users
	root to: 'pages#home'
	resources :pages do
    resources :comments
  end
	get 'about', to: 'pages#about'
	resources :contacts, only: :create
	get 'contact-us', to: 'contacts#new', as: 'new_contact'
}
