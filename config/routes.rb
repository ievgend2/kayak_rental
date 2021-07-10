
require 'sidekiq/web'
Rails.application.routes.draw do
  resources :reservations
  resources :kayaks
  devise_for :customers
  root to: 'public#main'
end
