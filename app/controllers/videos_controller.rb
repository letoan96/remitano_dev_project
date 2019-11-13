class VideosController < ApplicationController
  def index
    @video = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new
    video = VideoInfo.new(params[:youtube_url])
    @video_url = params[:youtube_url]
    @video.title = video.title
    @video.description = video.description
    @video.user = current_user
    @video.embed_code = video.embed_code
    if @video.save 
      redirect_to root_path, flash: { notice: "Video has been shared successfully." }
    end
  end

end
