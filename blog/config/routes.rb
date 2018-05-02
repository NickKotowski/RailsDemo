Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :tweeets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweeets#index"

  get 'welcome/home', to: 'welcome#home'

  get 'welcome/about', to: 'welcome#about'
end
