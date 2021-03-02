class UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            @token = JWT.encode({user_id: @user_id}, "boobsAndBuffaloWings")
            render json: { user: @user, todos: @user.todos token: @token }, status: :created
        else
            render json: {errors: @user.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
