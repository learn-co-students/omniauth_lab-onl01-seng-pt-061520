Rails.application.routes.draw do
  root 'welcome#home'

  get 'welcome/home'
  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
