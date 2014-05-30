class Show < ActiveRecord::Base
  has_many :videos

  def watched
    videos.select { |video| video.is_watched }
  end

  def unwatched
    videos.select { |video| !video.is_watched }
  end

  def percent_watched
    watched.count.to_f / videos.count
  end

  def fraction_out_of_ten_watched
    (percent_watched * 10).floor
  end

  def percent_bar
    string = "|#{'-' * fraction_out_of_ten_watched}#{" " * (10 - fraction_out_of_ten_watched)}|"
    string.gsub(' ', '&nbsp;').html_safe
  end
end
