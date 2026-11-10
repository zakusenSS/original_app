Rails.application.routes.draw do
  root "excretion_records#index"
  resources :excretion_records, only: [:index, :create]
end