Rails.application.routes.draw do
  devise_for :users
  resources :dailies
  root to: 'pages#home'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    # your routes here...
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
