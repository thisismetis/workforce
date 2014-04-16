Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles

  resources :departments

  resources :office_branches

  resources :users,
    controller: 'users',
    only: 'create'

  resources :contact_informations, only: [:new, :create, :show]
end
