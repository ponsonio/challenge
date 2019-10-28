Rails.application.routes.draw do
  resources :assistances
  resources :employees
  get 'check/index'
  get 'check/in'
  get 'check/out'
  get 'report/index'

  
  # goodmin
  mount Admin::Engine, at: "admin"

  # mount GrapeSwaggerRails::Engine, at: "/documentation"

  Rails.application.routes.draw do
  resources :assistances
  resources :employees
    mount API::Base, at: "/"
  end

end