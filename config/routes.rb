Rails.application.routes.draw do


	devise_for :users, :controllers => { registrations: 'registrations' }
	# resources :users
  resources :deeds, only: [:show, :index]
  resources :contributions

  root 'deeds#index'

  post 'twilio/voice' => 'twilio#voice'

  post 'notifications/notify' => 'notifications#notify'

end