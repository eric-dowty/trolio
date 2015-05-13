Rails.application.routes.draw do
  # resources :tasks, exclude: [:show]
  # resources :tasks, only: [:show]
  # root 'tasks#index'

  # post 'twilio/voice' => 'twilio#voice'

  get   '/wish', to: 'wish#new'
  post  '/wish', to: 'wish#create'

  root 'wish#new'
end
