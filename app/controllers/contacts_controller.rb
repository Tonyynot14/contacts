class ContactsController < ApplicationController
    def index
        @contacts = Contact.all 
    end
    def new
    end
    def create
     contact = Contact.new
       contact.first_name = params[:first_name]
       contact.last_name = params[:last_name]
       contact.phone = params[:phone]
       contact.email = params[:email]
       contact.address = params[:address]
       contact.city = params[:city]
       contact.state = params[:state]
       contact.zip = params[:zip]
       contact.save
       redirect_to '/contacts'
    end
    def edit
    @contact = Contact.find(params[:id])
    end
    def editInfo
    contact = Contact.find(params[:id])
     contact.first_name = params[:first_name]
     contact.last_name = params[:last_name]
     contact.phone = params[:phone]
     contact.email = params[:email]
     contact.address = params[:address]
     contact.city = params[:city]
     contact.state = params[:state]
     contact.zip = params[:zip]
     contact.save
     redirect_to '/contacts'
    end
end
