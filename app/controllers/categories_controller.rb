class CategoriesController < ApplicationController
    def index 
     @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles 
  end

  def create
     @category = current_user.categories.build(article_params)
        if @category.save
            flash[:success] = "Your Category is created"
            redirect_to category_path(@category)
        else
            flash[:alert] = "Something went wrong!!"
            render 'new'
        end 
  end

  def new
    @category = Category.new
  end
end
