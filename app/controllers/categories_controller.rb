class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts
    #can do this because we made the association in the models
    #why was line 10 wrong when singular?
    #why was line 9 wrong when caps?
  end

end
