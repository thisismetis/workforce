Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles

  resources :departments

  resources :office_branches

  resources :users,
    controller: 'users',
    only: ['create', 'index', 'update']

  resources :users, only: :nothing do
    resource :contact_information, only: [:edit, :update, :show]
  end

end
