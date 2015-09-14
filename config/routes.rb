Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    resources :contacts, only: [:index, :show, :edit, :update, :destroy]
  end

  # post "users/" => "users#create"
  # delete "users/:id" => "users#destroy"
  # get "users/" => "users#index"
  # get "users/:id" => "users#show", :as => 'user'
  # patch "users/:id" => "users#update"
  # get "users/:id/edit" => "users#edit", :as => 'edit_user'

  # get "users/new" => "users#new", :as => 'new_user'
end
