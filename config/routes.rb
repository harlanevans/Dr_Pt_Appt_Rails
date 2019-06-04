Rails.application.routes.draw do 
  devise_for :users
  root 'static_pages#home'
  resources :accounts

  resources :static_pages

  resources :patients

  resources :doctors do
    resources :appts
  end
end
