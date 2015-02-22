Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'

  get 'seasonal-products' => 'seasonal_products#index', :as => 'seasonal_products'

  resources :recipes
end
