class UsersController < ApplicationController
      rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_error
      def index
            users = User.all
            render json: users, status: :ok
      end
      def create
            user = User.create!(user_params)
            session[:user_id] = user.id
            render json: user, status: :created
      end
      def show
            render json: @current_user
      end
    
    
      private
    
      def user_params
            params.permit(:username, :password)
      end
      def unprocessable_entity_error(invalid)
            render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
      end
       
    
end
