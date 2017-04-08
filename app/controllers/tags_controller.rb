class TagsController < ApplicationController
  def create
    tag = Tag.new(name: params[:tag])
    if tag.save
      status = :created
    else
      status = :bad_request
    end
    render status: status, json: tag.as_json
  end
end