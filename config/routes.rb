Rails.application.routes.draw do
  get "logout", to: "sessions#destroy"
  get "auth/:provider/callback", to: "sessions#create"

  root "pages#home"
end
