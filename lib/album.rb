require_relative "track"

class Album
  attr_reader :artists, :title, :id, :tracks
  def initialize(album_id, album_name, artists)
    @title = album_name
    @id = album_id
    @artists = artists
    @tracks = []
  end

  def duration_min
    duration = 0
    tracks.inject(0) do |sum, track_ms|
      duration = sum + track_ms.duration_min
    end
    duration.round(2)
  end

  def track_list
    string = String.new
    tracks.each do |track|
      string += "- #{track.title}\n"
    end
    string
  end

  def summary
    "Name: #{title}\n" +
    "Artist(s): #{artists}\n" +
    "Duration (min.): #{duration_min}\n" +
    "#{track_list}\n"
  end
end
