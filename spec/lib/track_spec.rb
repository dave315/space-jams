require_relative "../../lib/track.rb"

describe Track do
    let(:track) {Track.new('7L3ZztbqdEbKItCMELoMk5', 'The Ghost Of You', '7', '237066')}

  describe '#new' do
    it 'should be an instance of the Track class' do
      expect(track).to be_a Track
    end
  end

  describe 'track title' do
    it 'should be a string' do
      expect(track.title).to be_a String
    end
  end

  describe 'track duration' do
    it 'should convert the track duration from ms to min' do
      expect(track.duration_min).to be 3.95
    end
  end

end
