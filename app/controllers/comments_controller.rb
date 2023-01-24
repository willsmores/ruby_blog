class CommentsController < ApplicationController
  def create
    # Each comment keeps track of which article it relates to
    @article = Article.find(params[:article_id])
    # Create method to create/save the comment
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
