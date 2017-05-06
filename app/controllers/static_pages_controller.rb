class StaticPagesController < ApplicationController
  def home
    #@stories = Story.published_not_featured(count: 4)

    @featured = Story.featured(count: 1)
  end

  def home_new
    @featured = Story.featured(count: 1)
    @stories = Story.published(count: 3)
  end

  def about
  end

  def interview_guide
    render 'static_pages/interview_guide'
  end

  def contact
  end
end
