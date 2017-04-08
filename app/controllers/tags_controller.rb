class TagsController < ApplicationController
  def create
    tag = Tag.new(name: params[:tag])
    if tag.save
      render status: :created, json: tag.as_json
    else
      render status: :bad_request
    end
  end
end