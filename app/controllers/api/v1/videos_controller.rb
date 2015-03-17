module Api
  module V1
    class VideosController < ApplicationController
      def index
        videos = [
          { id: 123, name: 'Video 1' },
        ]

        respond_to do |format|
          format.any(:json) do
            render json: videos
          end
        end
      end
    end
  end
end
