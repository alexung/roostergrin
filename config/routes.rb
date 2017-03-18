Rails.application.routes.draw do
  root 'splash#index'
  resources :splash, only: [:index]
 	post '/translate' => 'patients#translate', as: 'translate'
end
