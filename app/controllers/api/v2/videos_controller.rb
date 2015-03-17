module Api
  module V2
    class VideosController < ApplicationController
      def index
        videos = [
          { id: 123, name: 'Video 2' },
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
