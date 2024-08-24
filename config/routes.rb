Rails.application.routes.draw do
  get 'games/index'
  get 'contacts/new'
  get 'contacts/create'
  root "home#index"
  get 'contact', to: 'contact#index', as: 'contact'
  get 'projects', to: 'projects#index', as: 'projects'
  # get 'projects/:id'
  get 'resume', to: 'resume#index', as: 'resume'
  get 'bio', to: 'bio#index', as: 'bio'

  get "up" => "rails/health#show", as: :rails_health_check
end
