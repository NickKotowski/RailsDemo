Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :tweeets do
    put 'like' => 'tweeets#like'
  end

  resources :likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweeets#index"

  get 'welcome/home', to: 'welcome#home'

  get 'welcome/about', to: 'welcome#about'

  match 'likes/new/:tweeet/:user' => 'likes#new', via: :get, as: :likes_new
  match 'delete/like/:tweeet/:user' => 'likes#destroy', via: :get, as: :like_delete
end
