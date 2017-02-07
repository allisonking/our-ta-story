class StaticPagesController < ApplicationController
  def home
    @stories = Story.published_not_featured(count: 4)
    @featured = Story.featured
  end

  def home_new
    render 'static_pages/home_new'
  end

  def about
  end

  def interview_guide
    render 'static_pages/interview_guide'
  end

  def contact
  end
end
