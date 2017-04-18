Rails.application.routes.draw do
  resources :appointments
  get 'doctor/profile'
  get 'doctor/:id' ,to: 'doctor#show', as:'doctor_show'

  get 'user/profile'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'static_pages/home'

  get 'static_pages/about'
  get 'static_pages/landing'

  resources :departments
  devise_for :doctors
  devise_for :users
  devise_for :hospitals


  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
