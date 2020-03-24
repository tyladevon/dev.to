class AddArticlesController < ApplicationController
    def create
      collection = UserCollection.where(title: "New Default Collection").where(user_id: session_current_user_id).first
      if !collection
        collection = UserCollection.create(title: "New Default Collection", user_id: session_current_user_id)
      end
      article = Article.find(params[:reactable_id])
      collection.articles << article
      return
    end
end