class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: params
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        redirect_to comments_url
    end

    def comment_params
        params.require(:comments).permit(:body, :artwork_id, :author_id)
    end

end