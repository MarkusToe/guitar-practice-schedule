class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(categories_params)
    @category.last_practiced = Time.now
    if @category.save
      flash[:success] = "New Category #{@category.name} added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def categories_params
    params.require(:category).permit(:name)
  end
end
