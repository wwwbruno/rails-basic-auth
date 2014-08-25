Rails.application.routes.draw do
  
  # home
  root to: 'home#index'

  # restricted
  get '/dashboard', to: 'restrict#dashboard', as: :dashboard
  post '/admin/login', to: 'restrict#log_in', as: :log_in
  delete '/admin/logout', to: 'restrict#log_out', as: :log_out
end
