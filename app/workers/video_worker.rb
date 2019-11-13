class VideoWorker
  include Sidekiq::Worker

  def perform(video_url, user_id)
    video = VideoInfo.new(video_url)

    Video.create(
      url: video.url,
      title: video.title,
      description: video.description,
      user_id: user_id,
      embed_code: video.embed_code
    )
  end
end
