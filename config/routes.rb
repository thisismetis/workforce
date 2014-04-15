Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles, only: [:show, :index, :new, :create]
  
  resources :departments, only: [:index, :new, :create, :show]
end
