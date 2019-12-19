Rails.application.routes.draw do
  resources :ducks
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :delete]
end
