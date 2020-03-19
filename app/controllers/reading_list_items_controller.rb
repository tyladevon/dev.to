class ReadingListItemsController < ApplicationController
  # will be using this controller for 'collections' track
  # this action correlates with the ReadingListItemsIndex View and we will need
  # to update it based on the changes in functionality from ReadingList to Collections
  # with the functionality of holding many different lists (collections) rather than just
  # the one
  def index
    @reading_list_items_index = true
    set_view
    generate_algolia_search_key
  end

  def update
    @reaction = Reaction.find(params[:id])
    not_authorized if @reaction.user_id != session_current_user_id

    @reaction.status = params[:current_status] == "archived" ? "valid" : "archived"
    @reaction.save
    head :ok
  end

  private

  def generate_algolia_search_key
    params = { filters: "viewable_by:#{session_current_user_id}" }
    @secured_algolia_key = Algolia.generate_secured_api_key(
      ApplicationConfig["ALGOLIASEARCH_SEARCH_ONLY_KEY"], params
    )
  end

  def set_view
    @view = if params[:view] == "archive"
              "archived"
            else
              "valid"
            end
  end
end
