Rails.application.routes.draw do
  root 'static_pages#home'

  # Static pages
  get 'about', to: 'static_pages#about'

  get 'interview_guide', to: 'static_pages#interview_guide'

  get 'contact', to: 'static_pages#contact'

  get 'home_new', to: 'static_pages#home_new'

  #Casein routes
  namespace :casein do
      resources :stories
  end

  # Resources
  resources :stories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
