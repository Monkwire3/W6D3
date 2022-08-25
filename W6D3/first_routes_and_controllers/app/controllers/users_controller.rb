require 'byebug'

class UsersController < ApplicationController
    def index
        user = User.find_by(username: request.query_string)
        if user
            render json: user
        else
            users = User.all
            render json: users
        end
    end

    def create
        user = User.new(params.require(:users).permit(:username))
        # user.save!
        if user.save
            render json: params
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

#    def show_user_artworks
        #user = User.find(params[:id])
        #render json: user, include: [:shared_artworks, :artworks]
    #end

    def update
        # debugger
        user = User.find(params[:id])
        if user.update(user_param)
            redirect_to user_url(user.id)
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to users_url
    end

    def user_param
        params.require(:users).permit(:username)
    end

end

# localhost:3000/users/:username