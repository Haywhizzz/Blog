class CategoriesController < ApplicationController
    def index 
        @categories = Category.all  
    end

  def show
      @category = Category.find(params[:id])
  end

   def edit
      @category = Category.find(params[:id])
  end

  def create
     @category = Category.new(category_params)
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

  def update
    @category = Category.find(params[:id])
    if @category.update(article_params)
      flash[:success] = "your Category is  updated "
      redirect_to category_path(@category)
    else
      flash[:alert] = "something wrong!!"
      render 'edit'
    end

  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:success] = "your category is  deleted "
    else
      flash[:alert] = "something wrong!!"
    end
    redirect_to root_path
  end

private
    def category_params
        params.require(:category).permit(:name)
    end  
end
