Rails.application.routes.draw do

  root to: 'top#index'

  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'members' => 'users#top'

  get 'members/teachers' => 'users#index'

  get 'members/students' => 'users#index'

  get 'members/obog' => 'users#index'

  get 'users/show/:username' => 'users#show'

  get 'researchs' => 'researchs#index'

  get 'researchs/overview' => 'researchs#index'

  get 'researchs/work' => 'researchs#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
