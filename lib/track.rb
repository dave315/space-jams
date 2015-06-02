require_relative "album"

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
