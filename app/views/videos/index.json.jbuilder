json.array!(@videos) do |video|
  json.extract! video, :id, :name, :show_id, :user_id, :is_movie, :is_watched, :bookmark
  json.url video_url(video, format: :json)
end
