Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tent_for_rents#index"

  resources :tent_for_rents, only: [] do
  	collection  do
  		delete :reset_data
  	end
	end

  resources :customers, only: [:index]
  resources :transactions, only: [:index, :new, :create]
  resources :reports, only: [:index] 
end
