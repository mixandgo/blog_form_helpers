Rails.application.routes.draw do
  resource :users
  root 'site#index'
end
