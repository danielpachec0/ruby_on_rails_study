class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "User created"
            redirect_to root_url
        else
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :name_string, :password, :password_confirmation)
    end 

end
