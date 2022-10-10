class StretchPosesController < ApplicationController
def index
      stretchposes = StretchPose.all
      render json: stretchposes, status: :ok
end
