Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'projects#index'
  get 'projects/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
