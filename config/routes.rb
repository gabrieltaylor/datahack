Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'
  resources :products
  resources :months
  resources :provinces
end
