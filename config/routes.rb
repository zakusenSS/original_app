Rails.application.routes.draw do
  resources :excretion_records, only: [:index, :create]
end
