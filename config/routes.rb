Rails.application.routes.draw do
  resource :user
  root 'site#index'
end
