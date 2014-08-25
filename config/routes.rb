Rails.application.routes.draw do
  
  # home
  root to: 'home#index'

  # restricted
  get '/dashboard', to: 'restrict#dashboard', as: :dashboard
end
