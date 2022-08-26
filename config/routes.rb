Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "offices#index"
  resources :offices do
    member do 
      get :temp_jobs
    end
  end
  resources :professionals, :proposals, :invites, :applications, :booking_requests, :temp_job_posts
end
