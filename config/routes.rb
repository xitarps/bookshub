Rails.application.routes.draw do
  root to: 'home#index'
  get 'about', to: 'home#about'

  resources :books, only: %i[create new show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
