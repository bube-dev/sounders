Rails.application.routes.draw do
  get '/about', to: 'pages#about'
  get '/bookings', to: 'bookings#new'
  post '/bookings', to: 'bookings#create'
  get '/contact', to: 'pages#contact'
  get '/booked', to: 'bookings#booked'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
