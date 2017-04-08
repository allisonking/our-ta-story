Rails.application.routes.draw do
  root 'static_pages#home_new'

  # Static pages
  get 'about', to: 'static_pages#about'
  get 'interview_guide', to: 'static_pages#interview_guide'
  get 'contact', to: 'static_pages#contact'
  get 'home_new', to: 'static_pages#home_new'
  get 'team', to: 'static_pages#team'

  #Casein routes
  namespace :casein do
      resources :stories
  end

  # Resources
  resources :stories
  resources :tags, except: :show
  get 'tags/:tag', to: 'stories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
