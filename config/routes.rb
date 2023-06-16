Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "api/v1/stories" , to: "stories#index"
  namespace :api, default: {format: "json"} do
    namespace :v1 do
      resources :stories, only: [:index, :show, :create, :update, :destroy]
    end
  end

end
