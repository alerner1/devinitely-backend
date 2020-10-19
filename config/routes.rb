Rails.application.routes.draw do
  resources :checklists
  resources :contacts
  resources :notes
  resources :job_leads
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/job_leads', to: 'users#job_leads'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
