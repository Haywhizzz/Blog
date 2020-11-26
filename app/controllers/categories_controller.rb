class CategoriesController < ApplicationController
  before_action :authenticate_user!, expect: %i[edit update new create]
  before_action :set_category, only: %i[show edit update destroy]

    def index 
        @categories = Category.all  
    end

  def show
      
  end

   def edit
      
  end

  def create
     @category = Category.new(category_params)
        if @category.save
            flash[:success] = "Your Category is created"
            redirect_to category_path(@category)
        else
            flash[:alert] = "Something went wrong!"
            render 'new'
        end 
  end

  def new
    @category = Category.new
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(article_params)
      flash[:success] = "Your Category is  updated "
      redirect_to category_path(@category)
    else
      flash[:alert] = "Something went wrong!"
      render 'edit'
    end

  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:success] = "Your category is deleted "
    else
      flash[:alert] = "Something went wrong!"
    end
    redirect_to root_path
  end

private
    def category_params
      params.require(:category).permit(:name)
    end  

    def set_category
    @category = Category.find(params[:id])
    end
end
