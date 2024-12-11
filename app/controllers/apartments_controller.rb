class ApartmentsController < ApplicationController

  skip_before_action(:authenticate_user!, { :only => [:index] })
  
  def index
    matching_apartments = Apartment.all

    @list_of_apartments = matching_apartments.order({ :created_at => :desc })

    render({ :template => "apartments/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_apartments = Apartment.where({ :id => the_id })

    @the_apartment = matching_apartments.at(0)

    render({ :template => "apartments/show" })
  end

  def create
    the_apartment = Apartment.new
    the_apartment.title = params.fetch("query_title")
    the_apartment.description = params.fetch("query_description")
    the_apartment.address = params.fetch("query_address")
    the_apartment.city = params.fetch("query_city")
    the_apartment.state = params.fetch("query_state")
    the_apartment.zip_code = params.fetch("query_zip_code")
    the_apartment.rent = params.fetch("query_rent")
    the_apartment.availability_start_date = params.fetch("query_availability_start_date")
    the_apartment.availability_end_date = params.fetch("query_availability_end_date")
    the_apartment.user_id = params.fetch("query_user_id")

    if the_apartment.valid?
      the_apartment.save
      redirect_to("/apartments", { :notice => "Listing created successfully." })
    else
      redirect_to("/apartments", { :alert => the_apartment.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_apartment = Apartment.where({ :id => the_id }).at(0)

    the_apartment.title = params.fetch("query_title")
    the_apartment.description = params.fetch("query_description")
    the_apartment.address = params.fetch("query_address")
    the_apartment.city = params.fetch("query_city")
    the_apartment.state = params.fetch("query_state")
    the_apartment.zip_code = params.fetch("query_zip_code")
    the_apartment.rent = params.fetch("query_rent")
    the_apartment.availability_start_date = params.fetch("query_availability_start_date")
    the_apartment.availability_end_date = params.fetch("query_availability_end_date")
    the_apartment.user_id = params.fetch("query_user_id")

    if the_apartment.valid?
      the_apartment.save
      redirect_to("/apartments/#{the_apartment.id}", { :notice => "Apartment updated successfully."} )
    else
      redirect_to("/apartments/#{the_apartment.id}", { :alert => the_apartment.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_apartment = Apartment.where({ :id => the_id }).at(0)

    the_apartment.destroy

    redirect_to("/apartments", { :notice => "Apartment deleted successfully."} )
  end
end
