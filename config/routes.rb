Rails.application.routes.draw do
  post 'clock_history', to: 'clock_history#create'

  get 'clock_history/new'
  get 'clocks/export', to: 'clocks#export'

  resources :clocks
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
