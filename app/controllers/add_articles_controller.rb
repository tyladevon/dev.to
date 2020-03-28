class AddArticlesController < ApplicationController
    def create
      collection = UserCollection.where(title: params[:collection]).where(user_id: session_current_user_id).first
      if !collection
        collection = UserCollection.create(title: "Default Collection", user_id: session_current_user_id)
      end
      article = Article.find(params[:reactable_id])
      if collection.articles.include?(article)
        return
      else
        collection.articles << article
      end
    end
end
