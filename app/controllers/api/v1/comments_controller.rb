class Api::V1::CommentsController < Api::V1::BaseController
  def create
    @comment = Comment.new(comment_params)
    @comment.story_id = params[:story_id].to_i
    if @comment.save
      head :no_content
      # redirect_to api_v1_story_path(@comment.story), status: 303
      # @story = @comment.story
      # render "api/v1/stories/show"
    else
      render_error
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content)
  end

  def render_error
    render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
  end
end
