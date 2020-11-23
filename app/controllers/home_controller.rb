class HomeController < ApplicationController
    def index
        @articles = Article.all
        user = User.all
    end
end
