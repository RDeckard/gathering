# frozen_string_literal: true

Rails.application.routes.draw do
  root 'workshop_templates#index'

  resources :workshops
  resources :workshop_templates

  namespace :admin do
    root 'workshop_templates#index'

    resources :workshops
    resources :workshop_templates
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
