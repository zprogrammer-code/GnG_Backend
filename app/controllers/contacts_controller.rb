class ContactsController < ApplicationController
    def index
        @workouts = Contact.all 
        render json: @workouts 
    end
    
    def show
        @contacts = Contact.find(params[:id])
        render json: @contacts
    end

    def create
        @contacts = Contact.create(
            email: params[:email],
            number: params[:number],
            comment: params[:comment],
           
        )
        render json: @contacts
    end
    def update
        @contacts = Contact.find(params[:id])
        @contacts = Contact.update(
            typeOf: params[:workout],
            weight: params[:weight],
            set: params[:set],
            reps: params[:reps]
        )
        @contacts.save
        render json: @contacts
    end
    def delete
        @contacts = Contact.find(params[:id])
        @contacts = Contact.destroy
        render json: @contacts
    end
end
