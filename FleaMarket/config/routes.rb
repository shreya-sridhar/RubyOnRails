Rails.application.routes.draw do
  resources :assets
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'assets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
