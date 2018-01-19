Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show]
      resources :locations, only: [:show]
      resources :book_locations, only: [:show] do
        resources :locations, only: [:update]
      end
    end
  end
end
