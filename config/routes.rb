Rails.application.routes.draw do
  resources :courses
  get 'pages/about'
  get 'pages/location'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end