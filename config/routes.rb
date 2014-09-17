Rails.application.routes.draw do
  devise_for :users, path_name: {sign_in: "login", sign_out: "logout"}

  resources :contacts do
    resources :messages
  end
end
