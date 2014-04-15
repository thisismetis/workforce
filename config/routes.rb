Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles

  resources :departments, only: [:index, :new, :create, :show]

  resources :users,
    controller: 'users',
    only: 'create'
end
