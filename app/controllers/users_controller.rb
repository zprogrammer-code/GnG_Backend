class UsersController < ApplicationController
        def index
            @users = User.all 
            render json: @users 
        end
        def show
            @users = User.find(params[:id])
            render json: @users
        end
        def create
            @users = User.create(
                email: params[:email],
                number: params[:number],
                comment: params[:comment],
               
            )
            render json: @users
        end
        def update
            @users = User.find(params[:id])
            @users = User.update(
                typeOf: params[:workout],
                weight: params[:weight],
                set: params[:set],
                reps: params[:reps]
            )
            @users.save
            render json: @users
        end
        def delete
            @users = User.find(params[:id])
            @users = User.destroy
            render json: @contacts
        end
    end
    
