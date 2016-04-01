Rails.application.routes.draw do
  devise_for :users

  get 'logging/index', as: :logging
  post 'logging/info'
  post 'logging/debug'
  post 'logging/with_procname'
  post 'logging/with_procname_hash'
  post 'logging/tagged'
  post 'logging/multi_tagged'

  get 'exceptions/index', as: :exceptions
  post 'exceptions/trigger', as: :trigger_exception

  get 'widgets/chat', as: :chat
  get 'widgets/arcud', as: :arcud
  #get 'widgets/notifications', as: :notifications

  resources :articles
  resources :candidates, only: [:index] do
    member do
      put :vote
    end
  end

  root to: "home#index", as: :home

end
