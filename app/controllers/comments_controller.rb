class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @page = Page.find(params[:page_id])
    if @comment = @page.comments.create(comment_params)
      flash[:success] = 'New Comment Created!'
    else
      flash[:danger] = 'An Error Occurred'
    end

    redirect_to page_path(@page, @comment)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body, :page_id)
  end
end
