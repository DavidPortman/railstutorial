Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :users
  get  'static_pages/about'
  root 'application#hello'
end