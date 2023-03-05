Rails.application.routes.draw do
  devise_for :publics, controllers: {
    sessions: 'public/sessions',
    passwords: 'publics/passwords',
    registrations: 'publics/registrations'
  }
  devise_for :admins,controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  get "customers/sign_in", to: 'public/sessions#new', as: :new_public_session
  post "customers/sign_in", to: 'public/sessions#create', as: :public_session
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
