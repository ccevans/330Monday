Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  get 'pages/about_us'
  get 'pages/admin'
  get 'pages/faq'
  get 'pages/contact'
  get 'pages/interact'
  get 'pages/home'
  get 'pages/marketingconsulting'
  get 'pages/jpmicrosite'
  get 'pages/checkoutclt'
  get 'pages/checkoutclt2'
  get 'pages/interactivecampaigns'

    resources :posts
    resources :campaigns

    match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]

end
