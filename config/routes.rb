Rails.application.routes.draw do
  get "documentary_films/index"
  get "documentary_films/new"
  get "documentary_films/create"
  get "series1/index"
  get "series1/new"
  get "series1/create"
  get "movies/index"
  get "movies/new"
  get "movies/create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  root "movies#index"
  resources :movies
  resources :series1
  resources :documentary_films
end
