# Contains all methods for application
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
    
    def search
    end
    def search_results
         #need to be able to search by first name full name or last name or
    @first_name = "%#{params[:first_name]}%"
    @last_name ="%#{params[:last_name]}%"
    @contacts = Contact.where("last_name LIKE ? and first_name LIKE ?",@last_name,@first_name)
    @first_name_no_per = params[:first_name]
    @last_name_no_per = params[:last_name]
    end
end
