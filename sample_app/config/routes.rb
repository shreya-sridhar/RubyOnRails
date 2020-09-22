Rails.application.routes.draw do


  devise_for :users
  get '/', to: 'static_pages#home'
  
  # scope '/checkout' do
  # post 'create', to: 'checkout#create', as: 'checkout_create'
  # get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  # get 'success', to: 'checkout#success', as: 'checkout_success'
  # end
  #
  #
  #
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'static_pages#home'
end
