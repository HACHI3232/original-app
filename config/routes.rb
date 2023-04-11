Rails.application.routes.draw do
  get '/' => 'dictionaries#index'
  resources :dictionaries
end
