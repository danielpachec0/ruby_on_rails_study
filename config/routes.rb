Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"

  get "about", to: "static_pages#about"
  get "contact_us", to: "static_pages#contact_us"

  resources :contacts
  resources :users, only: [:new, :create]

end
