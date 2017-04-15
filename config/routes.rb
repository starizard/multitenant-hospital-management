Rails.application.routes.draw do
  resources :departments
  devise_for :doctors
  devise_for :users
  devise_for :hospitals



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
