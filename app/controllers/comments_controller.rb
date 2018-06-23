class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id].to_i)
    @articles = Article.all
    @comment = @article.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save 
      redirect_to @article
    else
      redirect_to @article
    end
  end

  def new
    @comment = Comment.new
  end

  def edit
    @article = Article.find(params[:article_id].to_i)
    @comment = Comment.find(params[:id].to_i)
  end

  def update
    @article = Article.find(params[:article_id].to_i)
    @comment = Comment.find(params[:id].to_i)
    if @comment.update(comment_params)
      redirect_to @article
    else 
      redirect_to @article
    end
  end

  def destroy
    @article = Article.find(params[:article_id].to_i)
    @comment = Comment.find(params[:id].to_i)
    if @comment.destroy
      redirect_to @article
    else
      redirect_to @article
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
