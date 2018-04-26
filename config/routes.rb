Rails.application.routes.draw do
  # get 'boats_jobs/new'
  # get 'boats_jobs/create'
  # get 'boats_jobs/edit'
  # get 'boats_jobs/destroy'
  # get 'boats_jobs/show'
  # get 'boats_jobs/update'
  # get 'shippers/show'
  # get 'shippers/index'
  # get 'shippers/edit'
  # get 'shippers/create'
  # get 'shippers/destroy'
  # get 'boats/new'
  # get 'boats/create'
  # get 'boats/show'
  # get 'boats/destroy'
  # get 'boats/edit'
  # get 'jobs/new'
  # get 'jobs/create'
  # get 'jobs/show'
  # devise_for :shippers

  devise_for :shippers, controllers: { sessions: 'shippers/sessions' }

  # devise_for :shippers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "boats#index"

  get '/profile/:id' => 'shippers#show'

  get '/join/create', to: 'shippers#joinshow', as: 'join_show'

  # post '/join/create', to: 'shippers#joincreate', as: 'join_create'

  post 'shippers/:id/dashboard', to: 'shippers#joincreate', as: 'join_create'

  get 'shippers/:id/dashboard', to: 'shippers#dashboard', as: 'shipper_dash'


  # resources :shippers do
  resources :boats
  resources :jobs
    # end



end
