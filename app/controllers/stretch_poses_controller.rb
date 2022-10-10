class StretchPosesController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response     
      def index
            stretchposes = StretchPose.all
            render json: stretchposes, status: :ok
      end
      def show
            stretchpose = find_stretch_poses
            render json: stretchpose, status: :ok
      end
      def update
            stretchpose = find_stretch_poses
            stretchpose.update!(stretch_params)
            render json: stretchpose, status: :ok
      end 

      private
      def find_stretch_poses
            StretchPose.find(params[:id])
      end 
      def stretch_params
            params_permit(:is_favoured)
      end 
      def render_not_found_response
            render json: {error: "Stretch Pose Currently Not Available "}, status: :not_found 
      end 
end 
