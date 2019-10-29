Rails.application.routes.draw do
  resources :assistances
  resources :employees
  get 'check/index'
  get 'check/in'
  get 'check/out'
  get 'report/index'
  get 'search/new'
  post 'search/search'
  # goodmin
  mount Admin::Engine, at: 'admin'
  # swagger
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end