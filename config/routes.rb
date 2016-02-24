Rails.application.routes.draw do
  get 'logging/index', as: :logging
  post 'logging/info'
  post 'logging/debug'
  post 'logging/with_procname'
  post 'logging/with_procname_hash'
  post 'logging/tagged'
  post 'logging/multi_tagged'

  get 'exceptions/index', as: :exceptions
  post 'exceptions/trigger', as: :trigger_exception

  devise_for :users

  root to: "home#index", as: :home

end
