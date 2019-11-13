require 'faker'

FactoryBot.define do
  factory :video do |video|
    video.url {'https://www.youtube.com/watch?v=a86X2ril3vU&list=RDa86X2ril3vU'}
    video.title {'test title'}
    video.description {"Lorem Ipsum is simply dummy text of the printing and typesetting industry. \
                  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \
                  when an unknown printer took a galley of type and scrambled it to make a type specimen book. \
                  It has survived not only five centuries, but also the leap into electronic typesetting, \
                  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset \
                  sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like \
                  Aldus PageMaker including versions of Lorem Ipsum."}
    video.embed_code {'<iframe src="//www.youtube.com/embed/jxCI2gbfGFc" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'}           
  end
end
