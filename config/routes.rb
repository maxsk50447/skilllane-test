Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do  
    get '/users', to: 'devise/registrations#new'
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :courses do
    member do
      post 'apply'
    end
  end
  
  root 'landing#index'
end
