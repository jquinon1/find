Rails.application.routes.draw do
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :travels do
    resources :points, only: [:index,:new,:create]
  end
end
