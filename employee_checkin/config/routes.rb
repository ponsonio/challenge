Rails.application.routes.draw do
  get 'check/index'
  get 'check/in'
  get 'check/out'
  get 'report/index'

  
  # goodmin
  mount Admin::Engine, at: "admin"

  # mount GrapeSwaggerRails::Engine, at: "/documentation"

  Rails.application.routes.draw do
    mount API::Base, at: "/"
  end

end