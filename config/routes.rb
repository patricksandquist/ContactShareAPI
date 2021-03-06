Rails.application.routes.draw do
  resources :users, only: [:index, :update, :create, :destroy, :show]
  resources :contacts, only: [:show, :create, :update, :destroy]

  resources :users, only: [:index] do
    resources :contacts, only: [:index]
  end

  resources :contact_shares, only: [:create, :destroy]
end
