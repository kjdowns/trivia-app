class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            # save session
            # redirect to home
        else
            # render page again displaying errors
        end
    end

    def destroy
        
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end