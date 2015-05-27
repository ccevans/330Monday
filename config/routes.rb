Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  get 'pages/about_us'
  get 'pages/admin'
  get 'pages/interact'

    resources :posts

end
