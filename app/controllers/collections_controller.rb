class CollectionsController < ApplicationController
  skip_forgery_protection
  
  def index
    @collections = UserCollection.where(user_id: session_current_user_id)
  end

  def create
    collection = UserCollection.create(title: params[:title], user_id: session_current_user_id)
    if collection.save
      redirect_to "/collections"
    else
      flash[:error] = collection.errors.full_messages.to_sentence
      redirect_to "/collections"
    end
  end

  def show
    @collection = UserCollection.find(params[:id])
  end
end
