class StoreController < ApplicationController
  def index
    @products = Product.order(:title) # This lists all products in alpabetical order by title
    # SELECT "products" FROM "products" ORDER BY "title" ASC
  end
end
