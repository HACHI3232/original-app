Rails.application.routes.draw do
  root to: "dictionaries#index"
  resources :dictionaries
end
