Admin::Engine.routes.draw do
  resources :assistances
  resources :employees
  root to: "application#welcome"
end
