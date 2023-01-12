class CommentsController < ApplicationController
  
  before_action :authenticate_user!, :only => [:create]
  
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comments_params)

    redirect_to article_path(@article)
  end
  
  private

  def comments_params
    params.require(:comment).permit(:author, :body)
  end

end
