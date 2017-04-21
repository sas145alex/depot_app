Rails.application.routes.draw do
  resources :orders
  resources :line_items do
    member do
      post 'decrement_quantity'
    end
  end
  resources :carts
  resources :products do
    get :who_bought, on: :member
  end

  root 'store#index', as: 'store_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
