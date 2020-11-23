class HomeController < ApplicationController
    def index
        @articles = Article.all.by_most_recent
        users = User.all
    end

end
