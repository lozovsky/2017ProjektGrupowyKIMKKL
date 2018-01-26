Rails.application.routes.draw do

  resources :timetables do
    member do
      get :delete
    end
  end

  resources :routes do
    member do
      get :delete
    end
  end

  resources :lines
  resources :stops
  resources :timetables
  resources :routes
  resources :distances

  root 'static_pages#home'

  get  '/help',    to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'

  get '/timetableadmin', to: 'timetables#index'
  get '/stopsadmin', to: 'stops#index'
  get '/linesadmin',  to: 'lines#index'

  resources :users
end
