class AddArticlesController < ApplicationController
    def create
<<<<<<< HEAD
      collection = UserCollection.where(title: "Default Collection").where(user_id: session_current_user_id).first
=======
      collection = UserCollection.where(title: params[:collection]).where(user_id: session_current_user_id).first
>>>>>>> f36496e9d84c137b6dac79ebce65a3f00ffdbff4
      if !collection
        collection = UserCollection.create(title: "Default Collection", user_id: session_current_user_id)
      end
      article = Article.find(params[:reactable_id])
      collection.articles << article
      return
    end
end
