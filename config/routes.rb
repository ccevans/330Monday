Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  get 'pages/about_us'
  get 'pages/admin'

    resources :posts

end
