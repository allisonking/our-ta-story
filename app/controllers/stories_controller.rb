class StoriesController < ApplicationController
  def index
    @stories = Story.published
    if params[:tag]
      @stories = @stories.tagged_with(params[:tag]) if params[:tag]
      @title = "Stories tagged: #{params[:tag]}"
    else
      @title = "All stories"
      @featured = Story.featured(count: 1)
    end
    @stories = @stories.paginate page: params[:page], per_page: 9
  end

  def new
    @story = Story.new
  end

  def show
    @story = Story.find params[:id]
  end

  def create
    @story = Story.new story_params

    if @story.save
      flash[:success] = "Thanks for submitting your story. We'll review your story within the next week. We appreciate your willingness to share."
      redirect_to stories_path
    else
      flash.now[:warning] = 'There were problems when trying to create a new story. If this happens again, please let us know at info@ourtastory.com'
      render action: :new
    end
  end
  private

  def story_params
    params.require(:story).permit(:name, :body, :thumbnail, :media_type, :video_link, :audio_link, :author_name, :hometown,
                                  :birth_year, :email, :subject_of_story, :tag_list, :tag, { tag_ids: [] }, :tag_ids)
  end

end
