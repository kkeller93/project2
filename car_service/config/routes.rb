Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "cars#index"
  root to: "problems#home"

  resources :problems#, only: [:index, :show]
  resources :cars#, only: [:index, :show, :new, :update, :edit, :create, :delete]

end
