Rails.application.routes.draw do
  resources :aws_billings
  resources :reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
