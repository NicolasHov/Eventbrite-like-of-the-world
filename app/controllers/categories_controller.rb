class CategoriesController < ApplicationController


  def index
    @categories = Category.all 
  end

  def show
    @category= Category.find(params[:id])
  end

  def new
    @category= Category.new
  end

  def update
    @category= Category.find(params[:id])
    if @category.update(post_params)
      redirect_to category_path(@category.id)
    else 
      render "edit"
    end
  end

  def edit
    @category= Category.find(params[:id])
  end

  #ajouter le if else
  def create
    category= Category.create(post_params)
    redirect_to category_path(category.id)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private 

  def post_params
    params.require(:category).permit(:title, :slug)
  end

end
