Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :edit, :new, :create, :update]
  resources :students, only: [:index, :new, :show, :edit, :create, :update]
end
