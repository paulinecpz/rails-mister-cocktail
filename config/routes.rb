Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, except: [:destroy, :edit, :update] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end