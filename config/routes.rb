Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles, only: [:show, :index, :new, :create]
end
