class Api::V1::StoriesController < Api::V1::BaseController
  before_action :set_story, only: [ :show, :update, :destroy ]

  def index
    @stories = Story.all
    # render json: @stories
  end

  def show
    # render json: @story
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @story.update(story_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @story.destroy
    head :no_content
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:author, :content)
  end

  def render_error
    render json: { errors: @story.errors.full_messages }, status: :unprocessable_entity
  end
end
