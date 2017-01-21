class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def interview_guide
    render 'static_pages/interview_guide'
  end

  def contact
  end
end
