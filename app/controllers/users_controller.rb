class UsersController < ApplicationController
      def index
            users = User.all
            render json: users, status: :ok
      end
      def create
            user = User.create!(user_params)
            session[:user_id] = user.id
            render json: user, status: :created
      end
end
