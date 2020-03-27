module Api
  module V0
    class UserCollectionsController < ApiController
      def index
<<<<<<< HEAD
        collections = UserCollection.where(user_id: params[:user_id]).pluck(:title)
        collections.prepend("Default Collection")
=======
        collections = UserCollection.where(user_id: session_current_user_id).pluck(:title)
        if !collections.include?("Default Collection")
          collections.prepend("Default Collection")
        end
>>>>>>> f36496e9d84c137b6dac79ebce65a3f00ffdbff4
        render json: { collections: collections }
      end
    end
  end
end
