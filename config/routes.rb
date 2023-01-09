
# Rails.application.routes.draw do
  
#   get 'users/new'　これがどんな影響を生むかわからん
#   root 'static_pages#home'
#   get  '/help',    to: 'static_pages#help'
#   get  '/about',   to: 'static_pages#about'
#   get  '/contact', to: 'static_pages#contact'
#   get  '/signup',  to: 'users#new'
# end　


Rails.application.routes.draw do
  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users #resourcesメソッド index/show/new/create/edit/update/destroyを含む
  resources :account_activations, only: [:edit]
end