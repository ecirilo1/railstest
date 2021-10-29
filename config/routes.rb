Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'

  resources :customers do
    collection do
      get :replacements
    end
  end

  resources :customers, only: [:edit, :update, :index, :show]
  resources :replacements, only: [:index, :show, :new, :edit, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
