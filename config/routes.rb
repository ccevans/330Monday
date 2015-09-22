Rails.application.routes.draw do
  devise_for :users
  root 'pages#interact'

  get 'pages/about_us'
  get 'pages/admin'
  get 'pages/faq'
  get 'pages/contact'
  get 'pages/interact'
  get 'pages/home'

    resources :posts

    match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]

end
