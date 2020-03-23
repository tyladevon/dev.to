class CollectionsController < ApplicationController
  def index
    @collections = UserCollection.where(user_id: session_current_user_id)
  end
end
