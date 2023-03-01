module ArticlesHelper
    # def article_params
    #     params.require(:article).permit(:title, :body)
    #     # @article = Article.new(article_params)
    # end

    # def article_params
    #     params.require(:article).permit(:title, :body, :tag_list, :image)
    #     @article = Article.new(article_params)
    # end

    def article_params
        params.require(:article).permit(:title, :body, :tag_list, :image)
    end
end 
