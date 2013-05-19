Ticketee::Application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  get '/awaiting_confirmation',
      to: "users#confirmation",
      as: "confirm_user"

  put '/admin/user/:user_id/permissions',
      to: 'admin/permissions#update',
      as: :update_user_permissions    

  resources :files    

  root :to => "projects#index"
  resources :projects do
    resources :tickets
  end

  namespace :admin do
    root to: "base#index"
    resources :users do
      resources :permissions
    end
  end
  
  
end
