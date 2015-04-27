Rails.application.routes.draw do
  resources :projects

  devise_for :admins,:skip => [:registrations] 
as :admin do
  get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
  put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
end
  resources :pics
  root  "static#index"
end
