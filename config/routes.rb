Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
   get "/photos" => "photos#index"
   get "/photos/:id" => "photos#show"  
   post "/photos"  => "photos#create"


    # get "/photos" => "photos#index"
    # get "/photos/new" => "photos#new"
    # post "/photos"  => "photos#create" #c 
   

    # get "/photo/:id/edit" => "photo#edit"
    # patch "/photos/:id" => "photo#update" #u 
    # delete "/photos/:id" => "photos#destory" #D
  end
end
