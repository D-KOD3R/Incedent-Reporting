Rails.application.routes.draw do
  root to: 'incidents#new'
  resources :incidents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
