Rails.application.routes.draw do

  resources :invoices
  resources :staffs
  resources :reports
  resources :appointments
  get 'doctor/profile'
  patch 'doctor/profile', as: 'toggle_doctor_status',controller: :doctor, action: 'toggle_doctor'
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
