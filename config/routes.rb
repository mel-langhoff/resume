Rails.application.routes.draw do
  root "home#index"

  get '/projects', to: 'projects#index', as: 'projects'
  get '/resume', to: 'resume#index', as: 'resume'
  get '/bio', to: 'bio#index', as: 'bio'

  get '/contact', to: 'contacts#index', as: 'contact'

  post '/contacts', to: 'contacts#create'

  get "up" => "rails/health#show", as: :rails_health_check
end