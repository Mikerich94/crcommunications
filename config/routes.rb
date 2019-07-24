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
  get 'business_writing', to: 'pages#business_writing'
  get 'nonverbal', to: 'pages#nonverbal'
  get 'group_dynamics', to: 'pages#group_dynamics'
  get 'intercultural_communication', to: 'pages#intercultural_communication'
  get 'editing', to: 'pages#editing'
  get 'interviewing', to: 'pages#interviewing'
  get 'business_etiquette', to: 'pages#business_etiquette'
end