class TagsController < ApplicationController
    def index
        @taggedArticles = Article.tagged_with(:name)
    end

    def show
        @taggedArticle = Article.tagged_with(:id)
    end
end
