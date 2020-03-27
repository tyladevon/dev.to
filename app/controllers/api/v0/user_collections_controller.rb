module Api
  module V0
    class UserCollectionsController < ApiController
      def index
        collections = UserCollection.where(user_id: session_current_user_id).pluck(:title)
        if !collections.include?("Default Collection")
          collections.prepend("Default Collection")
        end
        render json: { collections: collections }
      end
    end
  end
end
