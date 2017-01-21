class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def show
    @casein_page_title = 'View story'
    @story = Story.find params[:id]
  end

  def create
    @story = Story.new story_params

    if @story.save
      flash[:notice] = 'Thanks for submitting your story. We\'ll review your story within the next 7 days and
        determine whether it\'s suitable for publication on our website. We appreciate your willingness to share.'
      redirect_to stories_path
    else
      flash.now[:warning] = 'There were problems when trying to create a new story'
      render action: :new
    end
  end
  private

  def story_params
    params.require(:story).permit(:name, :body)
  end

end
