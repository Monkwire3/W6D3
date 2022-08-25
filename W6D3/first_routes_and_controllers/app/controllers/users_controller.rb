require 'byebug'

class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
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