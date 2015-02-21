Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'
  resources :products
  resources :months
  resources :provinces
  # resources :local_seasonal_products, as: 'seasonal_products'
  get 'seasonal-products/:id' => 'seasonal_products#show', :as => 'seasonal_products'
end
