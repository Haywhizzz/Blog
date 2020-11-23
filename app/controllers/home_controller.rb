class HomeController < ApplicationController
    def index
        @articles = Article.all
        users = User.all
    end

end
