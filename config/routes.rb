Rails.application.routes.draw do
  resources :record_enrollments
  resources :pre_enrollments



  root 'record_enrollments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
