Rails.application.routes.draw do

  resources :deeds
  resources :contributions

  root 'deeds#index'

  post 'twilio/voice' => 'twilio#voice'

end
