Rails.application.routes.draw do
  devise_for :users

  # Routes for the Apartment image resource:

  root "apartments#index"

  # CREATE
  post("/insert_apartment_image", { :controller => "apartment_images", :action => "create" })
          
  # READ
  get("/apartment_images", { :controller => "apartment_images", :action => "index" })
  
  get("/apartment_images/:path_id", { :controller => "apartment_images", :action => "show" })
  
  # UPDATE
  
  post("/modify_apartment_image/:path_id", { :controller => "apartment_images", :action => "update" })
  


  #------------------------------

  # Routes for the Inquiry resource:

  # CREATE
  post("/insert_inquiry", { :controller => "inquiries", :action => "create" })
          
  # READ
  get("/inquiries", { :controller => "inquiries", :action => "index" })
  
  get("/inquiries/:path_id", { :controller => "inquiries", :action => "show" })
  
  # UPDATE
  
  post("/modify_inquiry/:path_id", { :controller => "inquiries", :action => "update" })
  
  # DELETE
  get("/delete_inquiry/:path_id", { :controller => "inquiries", :action => "destroy" })

  #------------------------------

  # Routes for the Apartment resource:

  # CREATE
  post("/insert_apartment", { :controller => "apartments", :action => "create" })
          
  # READ
  get("/apartments", { :controller => "apartments", :action => "index" })
  
  get("/apartments/:path_id", { :controller => "apartments", :action => "show" })
  
  # UPDATE
  
  post("/modify_apartment/:path_id", { :controller => "apartments", :action => "update" })
  
  # DELETE
  get("/delete_apartment/:path_id", { :controller => "apartments", :action => "destroy" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  post("/insert_user", { :controller => "users", :action => "create" })
          
  # READ
  get("/users", { :controller => "users", :action => "index" })
  
  get("/users/:path_id", { :controller => "users", :action => "show" })
  
  # UPDATE
  
  post("/modify_user/:path_id", { :controller => "users", :action => "update" })
  
  # DELETE
  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
