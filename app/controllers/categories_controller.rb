class CategoriesController < ApplicationController
  def show
    @categories = @event.catagories
  end
end
