Rails.application.routes.draw do
  root "users#index"
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback' => "users#login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
