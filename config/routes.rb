Rails.application.routes.draw do

  namespace :api do
    resources :albums, :artists
  end

end
