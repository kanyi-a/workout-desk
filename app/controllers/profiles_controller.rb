class ProfilesController < ApplicationController
      def index
            profiles = Profile.all
            render json: profiles
      
      end 
      def show
            profile = profile_find
            render json: profile.includes([ :users])
      end 

      private
      def profile_find
      Profile.find(params[:id])
      end

end
