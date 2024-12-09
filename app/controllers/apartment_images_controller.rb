class ApartmentImagesController < ApplicationController
  def index
    matching_apartment_images = ApartmentImage.all

    @list_of_apartment_images = matching_apartment_images.order({ :created_at => :desc })

    render({ :template => "apartment_images/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_apartment_images = ApartmentImage.where({ :id => the_id })

    @the_apartment_image = matching_apartment_images.at(0)

    render({ :template => "apartment_images/show" })
  end

  def create
    the_apartment_image = ApartmentImage.new
    the_apartment_image.apartment_id = params.fetch("query_apartment_id")
    the_apartment_image.image_url = params.fetch("query_image_url")

    if the_apartment_image.valid?
      the_apartment_image.save
      redirect_to("/apartment_images", { :notice => "Apartment image created successfully." })
    else
      redirect_to("/apartment_images", { :alert => the_apartment_image.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_apartment_image = ApartmentImage.where({ :id => the_id }).at(0)

    the_apartment_image.apartment_id = params.fetch("query_apartment_id")
    the_apartment_image.image_url = params.fetch("query_image_url")

    if the_apartment_image.valid?
      the_apartment_image.save
      redirect_to("/apartment_images/#{the_apartment_image.id}", { :notice => "Apartment image updated successfully."} )
    else
      redirect_to("/apartment_images/#{the_apartment_image.id}", { :alert => the_apartment_image.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_apartment_image = ApartmentImage.where({ :id => the_id }).at(0)

    the_apartment_image.destroy

    redirect_to("/apartment_images", { :notice => "Apartment image deleted successfully."} )
  end
end
