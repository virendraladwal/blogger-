Blogger::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :articles, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'wellcomes#index'
 
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors

  resources :author_sessions, only: [ :new, :create, :destroy ]

get 'login'  => 'author_sessions#new'
get 'logout' => 'author_sessions#destroy'
end