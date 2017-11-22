Rails.application.routes.draw do



  get 'users/new'
  get 'admin', :to => "dostep#index"
  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  match ':controller(/:action(/:id))', :via => [:get, :post]
end
