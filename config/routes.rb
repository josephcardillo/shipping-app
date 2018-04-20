Rails.application.routes.draw do
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
  root to: "jobs#index"

  get '/profile/:id' => 'shippers#show'

  get 'shippers/:id/dashboard' => 'shippers#create'

  # resources :shippers do
    resources :boats do
      resources :jobs
    # end
  end


end
