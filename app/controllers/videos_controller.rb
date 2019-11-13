class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    VideoWorker.perform_async(params[:youtube_url], current_user["id"])
    redirect_to root_path, flash: { notice: "Shared! We are reparing your video." }
  end

end
