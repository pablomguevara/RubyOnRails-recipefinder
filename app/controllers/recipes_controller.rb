class RecipesController < ApplicationController
  def index
  	@search_term = params[:search] || 'chocolate'
  	@recipes = Recipe.for(@search_term)
  end
end


# API notes

# All search requests should be made to the base search API URL. http://food2fork.com/api/search 
# All recipe requests should be made to this URL: http://food2fork.com/api/get 

# Parameters

# All parameters can be encoded as either HTTP GET or POST parameters.
# Search
# key: API Key
# q: (optional) Search Query (Ingredients should be separated by commas). If this is omitted top rated recipes will be returned.
# sort: (optional) How the results should be sorted. See Below for details.
# page: (optional) Used to get additional results
# Get Recipe
# key: API Key
# rId: Id of desired recipe as returned by Search Query
#
# Search:
# curl -v http://food2fork.com/api/search?key=$FOOD2FORK_KEY&q=shredded%20chicken
# 
