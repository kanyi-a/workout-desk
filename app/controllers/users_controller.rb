class UsersController < ApplicationController
      rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_error
      #skip_before_action :authorize, only: [:create]
      def index
            users = User.all
            render json: users, status: :ok
      end
      def create
            user = User.create!(user_params)
            render json: user
      end
      def show
            render json: @current_user
      end
    
      private
    
      def user_params
            params.permit(:username, :password, :password_confirmation)
      end
      def unprocessable_entity_error(invalid)
            render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
      end
       
    
end
