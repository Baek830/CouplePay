Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  root 'projects#index'
  resources :incomes
  resources :outgoes
  resources :users, only: [:show, :edit, :update] do
    member do
      get "logout"
    end
  end

end
