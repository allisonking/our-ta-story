class StaticPagesController < ApplicationController
  def home
    @stories = Story.published
  end

  def about
  end

  def interview_guide
    render 'static_pages/interview_guide'
  end

  def contact
  end
end
