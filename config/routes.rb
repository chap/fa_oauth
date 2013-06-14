FaOauth::Application.routes.draw do
  
  resources :users, :only => [:show]
  root 'users#show'

  mount_opro_oauth :except => [:oauth_client_apps, :docs, :tests]
end
