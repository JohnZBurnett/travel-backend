Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :articles

      get 'userarticles' => 'user_articles#index'
    end
  end
end