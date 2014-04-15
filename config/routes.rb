Workforce::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#show"

  resources :profiles

  resources :departments

  resources :office_branches

  resources :users,
    controller: 'users',
    only: ['create', 'index', 'show', 'edit', 'update']

  resources :users, only: :nothing do
    resource :contact_information, only: [:edit, :update, :show]
  end

end
