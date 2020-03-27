Rails.application.routes.draw do
  root to: 'activities#index'
    resources :activities do
      resources :reviews, only: [:index, :new, :create]
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
