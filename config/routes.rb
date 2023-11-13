Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  resources :customers,only: [:show,:edit]
  get 'check' => 'customers#check',as: "check"
  devise_for :admins,skip: [:passwords,:registrations],controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
