Workforce::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#show"

  resources :profiles
  
  resources :departments, only: [:index, :new, :create, :show]
end
