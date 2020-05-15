Rails.application.routes.draw do
  resources :doctors
  resources :laboratories
  resources :infections
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root 'patients#index'

  get '/doctors/see/:id', to: 'doctor#see', as: 'see_doctor'
end
