Rails.application.routes.draw do
  get 'stories/index'

  get 'stories/new'

  get 'stories/show'

  get 'stories/create'

  root 'static_pages#home'
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/interview_guide'

  get 'static_pages/submit'

  get 'static_pages/contact'

#Casein routes
namespace :casein do
    resources :stories
end

resources :stories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
