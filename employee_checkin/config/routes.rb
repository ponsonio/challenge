Rails.application.routes.draw do

   # root 'check/index?employee_id=1'
  resources :assistances
  resources :employees
  get 'check/index'
  get 'check/in'
  get 'check/out'
  get 'report/index'

  get 'search/new'
  post 'search/search'
  
  # goodmin
  mount Admin::Engine, at: "admin"

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
end