Rails.application.routes.draw do
  namespace :api do

    get 'super_powers' => 'super_powers#index'
    get 'super_powers/:id' => 'super_powers#show'
    post '/super_powers' => 'super_powers#create'
    patch '/super_powers/:id' => 'super_powers#update'
    delete '/super_powers/:id' => 'super_powers#destroy'
  end
end
