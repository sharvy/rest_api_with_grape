Rails.application.routes.draw do
  mount API => '/'
  root 'store_data#index'

end
