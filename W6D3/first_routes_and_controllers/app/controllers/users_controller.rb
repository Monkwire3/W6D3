class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(params.require(:user).permit(:username))
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
        user = User.find(user_param.id)
        if user.update(user_param)
            redirect_to user_url(user.id)
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def user_param
        params.require(:user).permit(:username)
    end

end

# localhost:3000/users/:username