require 'api_constraints'

Rails.application.routes.draw do
  scope module: :v1, defaults: {format: :json}, constraints: ApiConstraints.new(version: 1, default: true) do
    resources :calendars, only: [:index]
    resource :calendar, only: [:show]
    root 'calendars#index'
  end
end
