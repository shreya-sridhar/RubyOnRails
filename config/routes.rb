Rails.application.routes.draw do
  resources :posts
  get "about" => "public#about", as: :about
  # get "about", controller: "public", action: "about",  as: :about

  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "public#homepage"
end
