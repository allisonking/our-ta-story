class CommentsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @comment = @story.comments.new(comment_params)
    if @comment.save
      redirect_to story_path(@story)
    end 
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
