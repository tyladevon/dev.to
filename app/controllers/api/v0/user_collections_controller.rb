module Api
  module V0
    class UserCollectionsController < ApiController
      def index
        collections = UserCollection.where(user_id: params[:user_id]).pluck(:title)
        collections.prepend("Default Collection")
        render json: { collections: collections }
      end
    end
  end
end
