# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages', to: 'pages#index'
  resources :cocktails, only: %i[index new create show]
end
