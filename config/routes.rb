Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'landing_pages#index'

  resources :landing_pages, :only => [:index]

  resources :products do
    resources :reviews
  end
end
