Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show] do
        resources :locations, only: [:update]
      end
      resources :locations, only: [:show]
    end
  end
end
