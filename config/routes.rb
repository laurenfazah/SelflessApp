Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :deeds
  resources :contributions

  root 'deeds#index'

  post 'twilio/voice' => 'twilio#voice'

end
