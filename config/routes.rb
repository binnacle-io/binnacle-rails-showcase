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

  get 'webpush/index', as: :webpush
  post 'webpush/trigger', as: :webpush_trigger

  get 'widgets/chat', as: :chat
  get 'widgets/arcud', as: :arcud
  #get 'widgets/notifications', as: :notifications

  resources :articles
  resources :candidates, only: [:index] do
    collection do
      put :reset_votes_for
    end
    member do
      put :vote
    end
  end

  root to: "home#index", as: :home
  get 'manifest.json', to: redirect(ActionController::Base.helpers.asset_path('manifest.json'))
  get 'firebase-messaging-sw.js', to: -> (env) do
    [200, { 'Content-Type' => 'application/javascript' }, [Rails.application.assets['firebase-messaging-sw.js'].to_s]]
  end
end
