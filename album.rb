class Album
  attr_reader :artists, :title, :id
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

  def tracks
    @tracks

    # new_track = Track.new(track[:track_id])
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

class Track
  attr_reader :album_id, :id, :title, :track_number, :duration_ms

  def initialize(track_id, track_name, track_number, duration_ms)
    @id = track_id
    @title = track_name
    @track_number = track_number
    @duration_ms = duration_ms
  end

  def duration_min
    (duration_ms.to_f/60000).round(2)
  end

end

# a new track object example:
# new_track = Track.new(album_id, track_id, track_name, track_number, duration_ms)
#
# new_track.album_id =
#
