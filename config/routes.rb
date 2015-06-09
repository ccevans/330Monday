Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  get 'pages/about_us'
  get 'pages/admin'
  get 'pages/interact'
  get 'pages/faq'
  get 'pages/contact'

    resources :posts

    match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]

end
