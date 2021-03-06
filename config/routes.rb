# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  scope '/user' do
    resources :passwords, controller: 'clearance/passwords', only: %i[create new]
    resource :session, controller: 'clearance/sessions', only: [:create]

    resource :password,
             controller: 'clearance/passwords',
             only: %i[edit update]

    resources :users, controller: 'users', only: [:create]
    #
    # end

    get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
    delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'
    get '/sign_up' => 'clearance/users#new', as: 'sign_up'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'articles#index'
end
