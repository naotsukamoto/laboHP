Rails.application.routes.draw do

  root to: 'top#index'

  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'members' => 'users#index'

  get 'researchs' => 'researchs#index'

  get 'researchs/overview' => 'researchs#index'

  get 'researchs/work' => 'researchs#show'

  get 'map' => 'map#index'

  get 'carrier' => 'carriers#index'

  get 'comments' => 'comments#index'

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :comments
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
