Rails.application.routes.draw do
  resources :users do
    resources :notes
  end
  namespace :api do
    namespace :v1 do

      post '/auth', to: 'auth#create'
        get '/current_user', to: 'auth#show'
      end
    end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end