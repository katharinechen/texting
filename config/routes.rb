Rails.application.routes.draw do
  devise_for :users, path_name: {sign_in: "login", sign_out: "logout"}

  root :to => "application#index"

  resources :contacts
  resources :messages
end
