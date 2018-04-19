Rails.application.routes.draw do
  get 'boats/new'
  get 'boats/create'
  get 'boats/show'
  get 'boats/destroy'
  get 'boats/edit'
  get 'jobs/new'
  get 'jobs/create'
  get 'jobs/show'
  # devise_for :shippers

  devise_for :shippers, controllers: {
    sessions: 'shippers/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
