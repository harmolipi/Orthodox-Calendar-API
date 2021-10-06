Rails.application.routes.draw do
  namespace :v1, :defaults => {format: :json} do
    resources :calendars, only: [:index]
    resource :calendar, only: [:show]
  end
end
