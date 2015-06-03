require_relative "../../lib/album.rb"
require_relative "../../lib/track.rb"
require 'pry'

describe Album do
  let(:album) {Album.new('1dKh4z5Aayt8FFDWjO5FDh','Singles','Future Islands')}
  let(:track) {Track.new('7pkrYfwDOixoFKdc84YFHf','Spirit', 2, 261773)}

  describe '#track_list' do
    it 'should include a list of all tracks of the album' do
      album.track_list << track
      expect(album.track_list).should include 'Singles'
    end
  end

  describe "has artist" do
    it 'should have an artist in the album' do
      expect(album.artists).to eq('Future Islands')
    end
  end



end




# album_id,track_id,title,track_number,duration_ms,album_name,artists
# 1dKh4z5Aayt8FFDWjO5FDh,7pkrYfwDOixoFKdc84YFHf,Spirit,2,261773,Singles,Future Islands
#
# track - def initialize(track_id, track_name, track_number, duration_ms)
# album - def initialize(album_id, album_name, artists)
#

#
#
# describe Track do
#     let(:track) {Track.new('7L3ZztbqdEbKItCMELoMk5', 'The Ghost Of You', '7', '237066')}
#
#   describe '#new' do
#     it 'should be an instance of the Track class' do
#       expect(track).to be_a Track
#     end
#   end
#
#   describe 'track title' do
#     it 'should be a string' do
#       expect(track.title).to be_a String
#     end
#   end
#
#   describe 'track duration' do
#     it 'should convert the track duration from ms to min' do
#       expect(track.duration_min).to be 3.95
#     end
#   end
#
# end
