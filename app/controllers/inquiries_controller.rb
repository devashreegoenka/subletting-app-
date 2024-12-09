class InquiriesController < ApplicationController
  def index
    matching_inquiries = Inquiry.all

    @list_of_inquiries = matching_inquiries.order({ :created_at => :desc })

    render({ :template => "inquiries/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_inquiries = Inquiry.where({ :id => the_id })

    @the_inquiry = matching_inquiries.at(0)

    render({ :template => "inquiries/show" })
  end

  def create
    the_inquiry = Inquiry.new
    the_inquiry.messaage = params.fetch("query_messaage")
    the_inquiry.apartment_id = params.fetch("query_apartment_id")
    the_inquiry.asker_id = params.fetch("query_asker_id")
    the_inquiry.answerer_id = params.fetch("query_answerer_id")

    if the_inquiry.valid?
      the_inquiry.save
      redirect_to("/inquiries", { :notice => "Inquiry created successfully." })
    else
      redirect_to("/inquiries", { :alert => the_inquiry.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_inquiry = Inquiry.where({ :id => the_id }).at(0)

    the_inquiry.messaage = params.fetch("query_messaage")
    the_inquiry.apartment_id = params.fetch("query_apartment_id")
    the_inquiry.asker_id = params.fetch("query_asker_id")
    the_inquiry.answerer_id = params.fetch("query_answerer_id")

    if the_inquiry.valid?
      the_inquiry.save
      redirect_to("/inquiries/#{the_inquiry.id}", { :notice => "Inquiry updated successfully."} )
    else
      redirect_to("/inquiries/#{the_inquiry.id}", { :alert => the_inquiry.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_inquiry = Inquiry.where({ :id => the_id }).at(0)

    the_inquiry.destroy

    redirect_to("/inquiries", { :notice => "Inquiry deleted successfully."} )
  end
end
