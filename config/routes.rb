Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :transactions
  end
  get 'new_user_transaction', to: 'users#new_user_transaction'
  get 'user_transactions', to: 'users#user_transactions'
  root to: 'users#show'
end
