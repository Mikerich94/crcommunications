Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/offerings'

  get 'pages/public_speaking'

  root to: "pages#home"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do 
     resource :profile
  end 
  get 'about', to: 'pages#about'
  resources :contacts, only: [:create]
  get 'contact-us', to: 'contacts#new', as: 'new_contact' 
  get 'offerings', to: 'pages#offerings'
end
