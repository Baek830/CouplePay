Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: [:show, :edit, :update] do
    member do
      get "logout"
    end
  end

  root 'projects#index'
  get 'projects/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
