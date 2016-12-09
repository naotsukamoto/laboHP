Rails.application.routes.draw do
  root to: 'top#index'

  get 'users/index'

  get 'users/show' => 'users#index'

  get 'users/show/:username' => 'users#show'

  get 'researchs/overview' => 'researchs#index'

  get 'researchs/work' => 'researchs#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
