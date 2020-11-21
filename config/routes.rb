Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :exams
  resources :offices 
  get '/patient_list/:id', to: 'doctors#getPatientList'
end
