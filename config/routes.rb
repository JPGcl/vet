Rails.application.routes.draw do
  #resources :pet_histories
  #resources :clients
  #resources :pets
  resources :clients do
    resources :pets 
  end
  resources :pets do
    resources :pet_histories
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: "pets#index"
  root to: "clients#index"
  get "pets/index"
  post "pets/index"
  post "pets/create"
  get "pet_histories/index"
end
