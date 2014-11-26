class StaticPagesController < ApplicationController
  def home
    @categories = Category.joins(:exercises).group("categories.name").order("exercises.last_practiced ASC")
  end
end
