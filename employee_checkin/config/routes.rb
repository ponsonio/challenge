Rails.application.routes.draw do
  root 'check#index'
  get 'check/index'
  get 'check/in'
  get 'check/out'

  # goodmin
  mount Admin::Engine, at: "admin"
end
